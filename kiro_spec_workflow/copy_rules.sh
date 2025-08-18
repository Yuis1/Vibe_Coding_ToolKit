#!/bin/bash

# 复制规则文件到指定目录
# 用法:
#   交互模式: ./copy_rules.sh
#   命令行模式（全部IDE）: ./copy_rules.sh /path/to/project
#   命令行模式（指定IDE）: ./copy_rules.sh /path/to/project "Claude Code" "Qwen Code"

set -e

# 全局变量
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_FILE="$SCRIPT_DIR/ide_rule_path.conf"
PROJECT_PATH=""
SELECTED_IDES=()
OVERWRITE_MODE=""

# 工具函数
log_info() {
    echo "ℹ️  $1"
}

log_success() {
    echo "✅ $1"
}

log_error() {
    echo "❌ $1" >&2
}

log_warning() {
    echo "⚠️  $1"
}

# 检查必要文件是否存在
check_prerequisites() {
    if [[ ! -f "$CONFIG_FILE" ]]; then
        log_error "配置文件不存在: $CONFIG_FILE"
        exit 1
    fi
}

# 读取配置文件，解析IDE列表和规则
read_config() {
    local ides=()
    
    while IFS= read -r line; do
        # 跳过空行和注释
        [[ -z "$line" || "$line" =~ ^[[:space:]]*# ]] && continue
        
        # 解析格式：ide|source_path|target_path
        if [[ "$line" =~ ^([^|]+)\|([^|]+)\|(.+)$ ]]; then
            local ide="${BASH_REMATCH[1]}"
            if [[ "$ide" != "all" ]]; then
                ides+=("$ide")
            fi
        fi
    done < "$CONFIG_FILE"
    
    # 去重
    printf '%s\n' "${ides[@]}" | sort -u
}

# 获取指定IDE的规则
get_ide_rules() {
    local ide="$1"
    local rules=()
    
    while IFS= read -r line; do
        [[ -z "$line" || "$line" =~ ^[[:space:]]*# ]] && continue
        
        if [[ "$line" =~ ^([^|]+)\|([^|]+)\|(.+)$ ]]; then
            local config_ide="${BASH_REMATCH[1]}"
            local source="${BASH_REMATCH[2]}"
            local target="${BASH_REMATCH[3]}"
            
            if [[ "$config_ide" == "all" || "$config_ide" == "$ide" ]]; then
                rules+=("$source|$target")
            fi
        fi
    done < "$CONFIG_FILE"
    
    printf '%s\n' "${rules[@]}"
}

# 交互模式获取项目路径
get_project_path_interactive() {
    while true; do
        echo -n "请您输入要配置的项目的绝对路径："
        if [[ -t 0 ]]; then
            read -r PROJECT_PATH
        else
            read -r PROJECT_PATH < /dev/tty
        fi
        
        if [[ -z "$PROJECT_PATH" ]]; then
            log_error "路径不能为空，请重新输入"
            continue
        fi
        
        if [[ ! "$PROJECT_PATH" = /* ]]; then
            log_error "请输入绝对路径（以/开头）"
            continue
        fi
        
        break
    done
}

# 交互模式选择IDE
select_ides_interactive() {
    local available_ides=()
    while IFS= read -r ide; do
        [[ -n "$ide" ]] && available_ides+=("$ide")
    done < <(read_config)
    
    if [[ ${#available_ides[@]} -eq 0 ]]; then
        log_error "配置文件中没有找到有效的IDE配置"
        exit 1
    fi
    
    echo ""
    echo "可用的AI IDE列表："
    for i in "${!available_ides[@]}"; do
        printf "%2d) %s\n" $((i+1)) "${available_ides[i]}"
    done
    
    echo ""
    echo "请选择要配置的AI IDE（输入数字，多个用空格分隔，如：1 3 5）："
    
    local input
    if [[ -t 0 ]]; then
        read -r input
    else
        read -r input < /dev/tty
    fi
    
    if [[ -z "$input" ]]; then
        log_error "没有选择任何IDE"
        exit 1
    fi
    
    SELECTED_IDES=()
    for num in $input; do
        if [[ "$num" =~ ^[0-9]+$ ]] && [[ $num -ge 1 ]] && [[ $num -le ${#available_ides[@]} ]]; then
            local idx=$((num-1))
            SELECTED_IDES+=("${available_ides[idx]}")
        else
            log_warning "无效选择: $num，已跳过"
        fi
    done
    
    if [[ ${#SELECTED_IDES[@]} -eq 0 ]]; then
        log_error "没有有效的IDE选择"
        exit 1
    fi
    
    echo ""
    log_info "已选择的IDE: $(IFS=', '; echo "${SELECTED_IDES[*]}")"
}

# 处理命令行参数
parse_command_line_args() {
    if [[ $# -eq 0 ]]; then
        # 交互模式
        get_project_path_interactive
        select_ides_interactive
        return
    fi
    
    PROJECT_PATH="$1"
    
    if [[ ! "$PROJECT_PATH" = /* ]]; then
        log_error "项目路径必须是绝对路径（以/开头）"
        exit 1
    fi
    
    if [[ $# -eq 1 ]]; then
        # 复制所有IDE的规则
        SELECTED_IDES=()
        while IFS= read -r ide; do
            [[ -n "$ide" ]] && SELECTED_IDES+=("$ide")
        done < <(read_config)
        log_info "命令行模式：将复制所有IDE的规则到 $PROJECT_PATH"
    else
        # 复制指定IDE的规则
        shift
        SELECTED_IDES=("$@")
        log_info "命令行模式：将复制指定IDE的规则到 $PROJECT_PATH"
        log_info "指定的IDE: $(IFS=', '; echo "${SELECTED_IDES[*]}")"
        
        # 验证指定的IDE是否在配置文件中
        local available_ides=()
        while IFS= read -r ide; do
            [[ -n "$ide" ]] && available_ides+=("$ide")
        done < <(read_config)
        
        for ide in "${SELECTED_IDES[@]}"; do
            local found=false
            for available in "${available_ides[@]}"; do
                if [[ "$ide" == "$available" ]]; then
                    found=true
                    break
                fi
            done
            if [[ "$found" == false ]]; then
                log_warning "IDE '$ide' 在配置文件中未找到，将跳过"
            fi
        done
    fi
}

# 询问覆盖模式
ask_overwrite_mode() {
    local file="$1"
    
    if [[ -n "$OVERWRITE_MODE" ]]; then
        return
    fi
    
    echo ""
    log_warning "目标文件已存在: $file"
    echo "请选择操作："
    echo "1) 覆盖这个文件"
    echo "2) 跳过这个文件"
    echo "3) 覆盖所有文件"
    echo "4) 跳过所有文件"
    echo -n "请选择 (1-4): "
    
    local choice
    if [[ -t 0 ]]; then
        read -r choice
    else
        read -r choice < /dev/tty
    fi
    
    case "$choice" in
        1) return 0 ;;
        2) return 1 ;;
        3) OVERWRITE_MODE="overwrite_all"; return 0 ;;
        4) OVERWRITE_MODE="skip_all"; return 1 ;;
        *) 
            log_error "无效选择，跳过该文件"
            return 1
            ;;
    esac
}

# 复制单个文件或目录
copy_single_item() {
    local source="$1"
    local target="$2"
    
    # 检查源文件/目录是否存在
    if [[ ! -e "$source" ]]; then
        log_warning "源文件/目录不存在，跳过: $source"
        return
    fi
    
    # 创建目标目录
    local target_dir="$(dirname "$target")"
    if [[ ! -d "$target_dir" ]]; then
        log_info "创建目录: $target_dir"
        mkdir -p "$target_dir"
    fi
    
    # 处理文件冲突
    if [[ -e "$target" ]]; then
        case "$OVERWRITE_MODE" in
            "overwrite_all")
                # 继续覆盖
                ;;
            "skip_all")
                log_info "跳过: $source -> $target"
                return
                ;;
            *)
                if ! ask_overwrite_mode "$target"; then
                    log_info "跳过: $source -> $target"
                    return
                fi
                ;;
        esac
    fi
    
    # 执行复制
    if [[ -d "$source" ]]; then
        log_info "复制目录: $source -> $target"
        cp -r "$source" "$target"
    else
        log_info "复制文件: $source -> $target"
        cp "$source" "$target"
    fi
}

# 展开通配符路径
expand_wildcard_path() {
    local pattern="$1"
    local base_dir="$2"
    
    # 如果包含通配符
    if [[ "$pattern" == *"*"* ]]; then
        local expanded_paths=()
        while IFS= read -r -d '' file; do
            expanded_paths+=("$file")
        done < <(find "$base_dir" -path "$base_dir/$pattern" -print0 2>/dev/null || true)
        
        printf '%s\n' "${expanded_paths[@]}"
    else
        echo "$base_dir/$pattern"
    fi
}

# 处理IDE的复制规则
copy_ide_rules() {
    local ide="$1"
    local rules=()
    while IFS= read -r rule; do
        [[ -n "$rule" ]] && rules+=("$rule")
    done < <(get_ide_rules "$ide")
    
    if [[ ${#rules[@]} -eq 0 ]]; then
        log_warning "IDE '$ide' 没有找到复制规则"
        return
    fi
    
    log_info "正在处理 IDE: $ide"
    
    for rule in "${rules[@]}"; do
        [[ -z "$rule" ]] && continue
        
        if [[ "$rule" =~ ^([^|]+)\|(.+)$ ]]; then
            local source_pattern="${BASH_REMATCH[1]}"
            local target_pattern="${BASH_REMATCH[2]}"
            
            # 展开源路径
            local source_paths=()
            while IFS= read -r path; do
                [[ -n "$path" ]] && source_paths+=("$path")
            done < <(expand_wildcard_path "$source_pattern" "$SCRIPT_DIR")
            
            for source_path in "${source_paths[@]}"; do
                [[ ! -e "$source_path" ]] && continue
                
                local relative_path="${source_path#$SCRIPT_DIR/}"
                local target_path="$PROJECT_PATH/$target_pattern"
                
                # 如果源是通配符匹配的文件，需要调整目标路径
                if [[ "$source_pattern" == *"*"* ]]; then
                    local filename="$(basename "$source_path")"
                    if [[ "$target_pattern" == */ ]]; then
                        target_path="$PROJECT_PATH/${target_pattern}$filename"
                    else
                        target_path="$PROJECT_PATH/$target_pattern/$filename"
                    fi
                fi
                
                copy_single_item "$source_path" "$target_path"
            done
        fi
    done
}

# 处理IDE特定的复制规则（排除all规则）
copy_ide_specific_rules() {
    local ide="$1"
    local rules=()
    
    while IFS= read -r line; do
        [[ -z "$line" || "$line" =~ ^[[:space:]]*# ]] && continue
        
        if [[ "$line" =~ ^([^|]+)\|([^|]+)\|(.+)$ ]]; then
            local config_ide="${BASH_REMATCH[1]}"
            local source="${BASH_REMATCH[2]}"
            local target="${BASH_REMATCH[3]}"
            
            # 只处理该IDE的特定规则，跳过all规则
            if [[ "$config_ide" == "$ide" ]]; then
                rules+=("$source|$target")
            fi
        fi
    done < "$CONFIG_FILE"
    
    if [[ ${#rules[@]} -eq 0 ]]; then
        log_warning "IDE '$ide' 没有找到特定的复制规则"
        return
    fi
    
    log_info "正在处理 IDE: $ide"
    
    for rule in "${rules[@]}"; do
        [[ -z "$rule" ]] && continue
        
        if [[ "$rule" =~ ^([^|]+)\|(.+)$ ]]; then
            local source_pattern="${BASH_REMATCH[1]}"
            local target_pattern="${BASH_REMATCH[2]}"
            
            # 展开源路径
            local source_paths=()
            while IFS= read -r path; do
                [[ -n "$path" ]] && source_paths+=("$path")
            done < <(expand_wildcard_path "$source_pattern" "$SCRIPT_DIR")
            
            for source_path in "${source_paths[@]}"; do
                [[ ! -e "$source_path" ]] && continue
                
                local target_path="$PROJECT_PATH/$target_pattern"
                
                # 如果源是通配符匹配的文件，需要调整目标路径
                if [[ "$source_pattern" == *"*"* ]]; then
                    local filename="$(basename "$source_path")"
                    if [[ "$target_pattern" == */ ]]; then
                        target_path="$PROJECT_PATH/${target_pattern}$filename"
                    else
                        target_path="$PROJECT_PATH/$target_pattern/$filename"
                    fi
                fi
                
                copy_single_item "$source_path" "$target_path"
            done
        fi
    done
}

# 主函数
main() {
    log_info "AI IDE 规则文件复制工具"
    echo ""
    
    # 检查前提条件
    check_prerequisites
    
    # 解析命令行参数
    parse_command_line_args "$@"
    
    # 开始复制过程
    log_info "开始复制规则文件到项目: $PROJECT_PATH"
    
    # 首先处理"all"规则（通用规则）
    local all_rules=()
    while IFS= read -r rule; do
        [[ -n "$rule" ]] && all_rules+=("$rule")
    done < <(get_ide_rules "all")
    
    if [[ ${#all_rules[@]} -gt 0 ]]; then
        log_info "正在处理通用规则"
        for rule in "${all_rules[@]}"; do
            [[ -z "$rule" ]] && continue
            
            if [[ "$rule" =~ ^([^|]+)\|(.+)$ ]]; then
                local source_pattern="${BASH_REMATCH[1]}"
                local target_pattern="${BASH_REMATCH[2]}"
                
                # 展开源路径
                local source_paths=()
                while IFS= read -r path; do
                    [[ -n "$path" ]] && source_paths+=("$path")
                done < <(expand_wildcard_path "$source_pattern" "$SCRIPT_DIR")
                
                for source_path in "${source_paths[@]}"; do
                    [[ ! -e "$source_path" ]] && continue
                    
                    local target_path="$PROJECT_PATH/$target_pattern"
                    
                    # 如果源是通配符匹配的文件，需要调整目标路径
                    if [[ "$source_pattern" == *"*"* ]]; then
                        local filename="$(basename "$source_path")"
                        if [[ "$target_pattern" == */ ]]; then
                            target_path="$PROJECT_PATH/${target_pattern}$filename"
                        else
                            target_path="$PROJECT_PATH/$target_pattern/$filename"
                        fi
                    fi
                    
                    copy_single_item "$source_path" "$target_path"
                done
            fi
        done
    fi
    
    # 然后处理每个IDE特定的规则
    for ide in "${SELECTED_IDES[@]}"; do
        copy_ide_specific_rules "$ide"
    done
    
    echo ""
    log_success "复制完成！"
    log_info "目标路径: $PROJECT_PATH"
    log_info "已配置的IDE: $(IFS=', '; echo "${SELECTED_IDES[*]}")"
}

# 运行主函数
main "$@"
