#!/bin/bash

# AI IDE规则文件拷贝功能自动测试脚本
# 自动批量测试，无需用户交互

set -e

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# 获取脚本所在目录的绝对路径
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORKSPACE_ROOT="$(dirname "$SCRIPT_DIR")"
TEST_PROJECT_DIR="$SCRIPT_DIR/test_project"
SCRIPT_PATH="$WORKSPACE_ROOT/copy_rules.sh"

# 测试计数器
total_tests=0
passed_tests=0
failed_tests=0

# 测试函数
run_test() {
    local test_name="$1"
    local test_command="$2"
    
    ((total_tests++))
    echo -e "${BLUE}测试: $test_name${NC}"
    
    if eval "$test_command"; then
        echo -e "${GREEN}✓ 通过${NC}"
        ((passed_tests++))
    else
        echo -e "${RED}✗ 失败${NC}"
        ((failed_tests++))
    fi
    echo
}

# 清理测试环境
cleanup() {
    echo -e "${YELLOW}清理测试环境...${NC}"
    rm -rf "$TEST_PROJECT_DIR"/*
}

# 测试1: 检查脚本是否存在且可执行
test_script_exists() {
    [[ -f "$SCRIPT_PATH" && -x "$SCRIPT_PATH" ]]
}

# 测试2: 检查配置文件是否存在
test_config_exists() {
    [[ -f "$WORKSPACE_ROOT/ide_rule_path.conf" ]]
}

# 测试3: 检查配置文件格式是否正确
test_config_format() {
    grep -E "^[^#].*\|.*\|.*" "$WORKSPACE_ROOT/ide_rule_path.conf" | head -1 | grep -q "all"
}

# 测试4: 测试文件拷贝
test_file_copy() {
    cleanup
    
    # 创建测试项目目录
    mkdir -p "$TEST_PROJECT_DIR"
    
    # 运行脚本 - 只测试Claude Code
    cd "$WORKSPACE_ROOT"
    bash "$SCRIPT_PATH" "$TEST_PROJECT_DIR" "Claude Code" > /dev/null 2>&1 || true
    
    # 检查Claude Code特定的文件是否存在
    [[ -f "$TEST_PROJECT_DIR/.claude/CLAUDE.md" && -f "$TEST_PROJECT_DIR/rules/typescript-react.mdc" ]]
}

# 测试5: 测试目录创建功能
test_directory_creation() {
    cleanup
    
    local test_dir="$TEST_PROJECT_DIR/new_project"
    
    cd "$WORKSPACE_ROOT"
    bash "$SCRIPT_PATH" "$test_dir" "Claude Code" > /dev/null 2>&1 || true
    
    # 检查目录是否创建
    [[ -d "$test_dir/.claude" && -f "$test_dir/.claude/CLAUDE.md" ]]
}

# 测试6: 测试源文件存在性
test_source_files_exist() {
    local source_files
    source_files=$(grep -v '^#' "$WORKSPACE_ROOT/ide_rule_path.conf" | grep -v '^$' | cut -d'|' -f2)
    
    local missing_files=0
    while IFS= read -r source_path; do
        if [[ "$source_path" != *"*" ]]; then
            if [[ ! -f "$WORKSPACE_ROOT/$source_path" ]]; then
                echo -e "${YELLOW}警告: 源文件不存在: $source_path${NC}"
                ((missing_files++))
            fi
        fi
    done <<< "$source_files"
    
    [[ $missing_files -eq 0 ]]
}

# 主测试流程
main() {
    echo -e "${BLUE}================================${NC}"
    echo -e "${BLUE}  AI IDE规则文件拷贝功能测试${NC}"
    echo -e "${BLUE}================================${NC}"
    echo
    
    # 运行所有测试
    run_test "脚本存在且可执行" "test_script_exists"
    run_test "配置文件存在" "test_config_exists"
    run_test "配置文件格式正确" "test_config_format"
    run_test "源文件存在性检查" "test_source_files_exist"
    
    echo -e "${YELLOW}测试文件拷贝功能...${NC}"
    
    # 文件拷贝测试
    run_test "文件拷贝" "test_file_copy"
    run_test "目录创建功能" "test_directory_creation"
    
    # 清理
    cleanup
    
    # 测试结果汇总
    echo -e "${BLUE}================================${NC}"
    echo -e "${BLUE}测试结果汇总:${NC}"
    echo -e "${GREEN}通过: $passed_tests${NC}"
    echo -e "${RED}失败: $failed_tests${NC}"
    echo -e "${BLUE}总计: $total_tests${NC}"
    
    if [[ $failed_tests -eq 0 ]]; then
        echo -e "${GREEN}🎉 所有测试通过！${NC}"
        return 0
    else
        echo -e "${RED}❌ 部分测试失败${NC}"
        return 1
    fi
}

# 运行测试
main "$@"
