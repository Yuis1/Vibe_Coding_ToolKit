# Kiro风格的Spec工作流
这是一套专业的 AI 编程提示词规则集合，让主流的 AI IDE 支持 Sepc 开发流程，极大提升需求精准度和工程掌控力。

## 问题背景
目前 Vibe coding 最大的问题是：开发变成了“碰运气”，而不是“可控的工程”。

你是否有过这样的体验：在 AI IDE 里输入一句模糊的需求，点击“生成”，满怀期待地等着 AI 给你一个完美的程序？
结果却像在拉霸机前拉动拉杆——有时中个小奖，大多数时候却一无所获。

而传统软件工程强调需求澄清、技术设计、任务拆分、过程可追溯。  
这样做虽然“慢”，但能让项目稳步推进、可复盘、可协作。每一步都有人参与评审，确保方向和细节都不会跑偏。

## 解决方案
软件工程是抽象的艺术，汇编 → 高级语言 → Vibe Coding，一代人有一代人的抽象层级。
但是编程的本质，将思维逻辑转化为可执行的解决方案，将保持不变。

在需求不清晰不具体的情况下，指望AI先一股脑儿生成代码，再来慢慢修改不断逼近，这种方法目前成功率低，浪费时间和Token。

正确的方法是推倒重来，从零开始，让AI和你步步确认需求，逐需求推进。

**引入 Kiro 风格的 Spec 工作流**。

Kiro 是 AWS 推出的 AI IDE，亮点是它的 Spec 工作流。

一个 Spec 可以说是一个规格/规范，如果用过BDD (行为驱动开发) 可能就会比较熟悉这个名词。

Spec 是用来解决如何把模糊的想法转化为详细的实施计划、跟踪和验收标准的问题。


**每个 Spec 都是一个文件夹，下有 3 个核心文件**

1. requirements.md —— 需求文档（用 EARS 语法写用户故事和验收标准）
2. design.md —— 技术方案（架构、流程、注意事项）
3. tasks.md —— 任务清单（todolist，便于跟踪）

感觉有没有很熟悉？其实这和很多大厂的研发流程、敏捷开发的拆解方式如出一辙，但 Kiro 把它和 AI IDE 深度结合，极大提升了落地效率。

通过这种限制，AI 不再是“黑箱”式地帮你生成代码，而是和你像搭档一样，步步确认、逐步推进。  
这样，哪怕没有 Kiro，借助 Claude Code 也能轻松复刻 Spec 工作流，让 AI 编程变得高效、可控、可复盘。  
其他的 AI IDE 通过规则文件，也可以提升编码准确率。

## ✨ 核心特性

### 🎯 Spec 工作流支持
- **Kiro 风格工作流**：需求→设计→任务的标准化流程
- **多 IDE 兼容**：Cursor、Claude Code、Augment Code 等
- **工程化开发**：告别"拉霸式"编程，过程可控可追溯
- **智能协作**：AI 协助梳理需求，人类专注决策评审

**什么是 EARS 需求语法？**

EARS（简易需求语法）最早用于喷气发动机控制系统，后来被软件工程广泛采用。它用简单句式约束需求，避免“模糊表达”，让需求更清晰、可落地。  
参考：[EARS 语法指南](https://alistairmavin.com/ears/)


## 🚀 快速开始

1. **拷贝规则到项目**
```bash
chmod +x copy_rules.sh
./copy_rules.sh
```
1. **按提示操作**

- 输入目标项目路径
- 选择需要的 AI IDE
- 已存在的配置会提示是否覆盖
- 完成 🎉

## 目录结构

```
kiro_spec_workflow/
├── ⚙️ copy_rules.sh               # 规则复制脚本
├── 📄 ide_rule_path.conf          # IDE 配置文件
├── 📖 main_rules.md               # 主规则文件
├── 📁 rules/                      # 专业规则文件
│   ├── 🌐 web-development.mdc         # Web 前端开发
│   ├── ⚛️ typescript-react.mdc        # React + TypeScript
│   ├── 🤖 copilotkit-react.mdc        # CopilotKit AI 集成
│   ├── 🧠 langgraph-agent.mdc         # LangGraph 智能体
│   ├── 🐍 python-ai-backend.mdc       # Python AI 后端
│   ├── 🔗 dify-api-integration.mdc    # Dify API 集成
│   ├── 🔌 dify-plugin-development.mdc # Dify 插件开发
│   ├── 🗄️ database.mdc               # 数据库操作
│   ├── 🚀 deployment.mdc              # 部署配置
│   ├── ☁️ cloudbase-platform.mdc      # CloudBase 平台
│   ├── 📱 miniprogram-development.mdc # 微信小程序
│   ├── ⚙️ workflows.mdc               # 开发工作流
│   └── 🎨 ui-design.mdc               # UI 设计规范
└── 🧪 test/                        # 测试工具

## 📋 规则文件
规则文件可根据自己的习惯再次修改。

### 🌐 Web 前端开发
- **web-development.mdc**: 通用 Web 项目结构和工程化配置
- **typescript-react.mdc**: React + TypeScript 专业开发规范

### 🤖 AI 集成开发
- **copilotkit-react.mdc**: CopilotKit React AI 组件集成
- **langgraph-agent.mdc**: LangGraph 图形化 AI 智能体开发
- **python-ai-backend.mdc**: Python FastAPI AI 后端服务

### 🔗 平台集成
- **dify-api-integration.mdc**: Dify 知识库和工作流 API 集成
- **dify-plugin-development.mdc**: Dify 扩展插件开发
- **cloudbase-platform.mdc**: CloudBase 云开发平台集成

### 🛠️ 基础设施
- **database.mdc**: 多数据库支持（MySQL、PostgreSQL、MongoDB）
- **deployment.mdc**: 多平台部署（Vercel、Docker、传统服务器）
- **workflows.mdc**: 开发工作流程规范

### 📱 小程序开发
- **miniprogram-development.mdc**: 微信小程序开发规范

### 🎨 设计规范
- **ui-design.mdc**: UI/UX 设计系统和组件规范

## 🔧 高级用法

### 自定义规则
1. 创建新的 `.mdc` 规则文件
2. 添加到 `ide_rule_path.conf`
3. 运行 `copy_rules.sh` 部署

## 📚 学习资源

- [EARS 需求语法指南](https://alistairmavin.com/ears/)
- [Kiro Spec 工作流详解](https://mp.weixin.qq.com/s/3j6lG50isbuSH4p64TsNag)

## 🙏 致谢

- **基础提示词来源**：[CloudBase-AI-ToolKit](https://github.com/TencentCloudBase/CloudBase-AI-ToolKit)
- **Kiro Spec 工作流详解**：[布克 - AI 编程不靠运气，Kiro Spec 工作流复刻全攻略](https://mp.weixin.qq.com/s/3j6lG50isbuSH4p64TsNag)
- **Claude Code Commands来源**：
    - checkpoint 命令：[手工川-快试试我最新的神级 CCC](https://mp.weixin.qq.com/s/P5OmJH8gwr7dq8RQv0MZmQ)
    - generate-command 命令：[手工川-你离顶级 Vibe Coder 至少差一个超级指令](https://mp.weixin.qq.com/s/TgXRZE33yiUzpBOVAai08g)