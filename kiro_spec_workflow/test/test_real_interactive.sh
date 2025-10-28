#!/bin/bash

# 简单的真实交互测试脚本
# 这个脚本需要在真实的终端环境中运行来测试交互功能

echo "================================"
echo "  真实交互模式测试"
echo "================================"
echo
echo "这个测试需要您手动输入，用于验证交互模式修复是否成功"
echo

# 测试目录
TEST_PROJECT_DIR="$(pwd)/test_project/interactive_real_test"
PARENT_DIR="$(dirname "$(pwd)")"

# 清理之前的测试
rm -rf "$TEST_PROJECT_DIR"

echo -e "\033[1;32m即将开始交互模式测试，请按提示输入：\033[0m"
echo "1. 项目路径输入: $TEST_PROJECT_DIR"
echo "2. 创建目录确认: y"
echo "3. IDE选择: 1 2 3 (测试多选功能)"
echo
echo "按回车键开始测试..."
read

cd "$PARENT_DIR"
./copy_rules.sh

echo
echo "================================"
echo "测试完成！检查结果："

if [[ -d "$TEST_PROJECT_DIR" ]]; then
    echo "✓ 项目目录已创建: $TEST_PROJECT_DIR"
    
    # 检查是否创建了多个IDE的配置文件
    found_configs=0
    
    if [[ -f "$TEST_PROJECT_DIR/.claude/CLAUDE.md" ]]; then
        echo "✓ Claude Code 配置文件已创建"
        ((found_configs++))
    fi
    
    if [[ -f "$TEST_PROJECT_DIR/.qwen/QWEN.md" ]]; then
        echo "✓ Qwen Code 配置文件已创建"
        ((found_configs++))
    fi
    
    if [[ -f "$TEST_PROJECT_DIR/.gemini/GEMINI.md" ]]; then
        echo "✓ Gemini Code 配置文件已创建"
        ((found_configs++))
    fi
    
    if [[ $found_configs -ge 2 ]]; then
        echo -e "\033[1;32m🎉 多选功能测试成功！创建了 $found_configs 个IDE配置\033[0m"
    else
        echo -e "\033[1;31m❌ 多选功能可能有问题，只创建了 $found_configs 个IDE配置\033[0m"
    fi
    
    echo
    echo "创建的目录结构："
    tree "$TEST_PROJECT_DIR" 2>/dev/null || find "$TEST_PROJECT_DIR" -type f
else
    echo -e "\033[1;31m❌ 测试失败，项目目录未创建\033[0m"
fi

echo
echo "测试目录保留在: $TEST_PROJECT_DIR"