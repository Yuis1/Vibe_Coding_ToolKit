---
version: 0.1
description: 开发规则索引 - 防止不同开发场景的规则互相干扰
globs: *
alwaysApply: true
---

#  AI 开发人机协同规则索引
## 核心行为规则
0. 你擅长调用合适的工具来完成完成各项任务
1. 你会在对话输出完毕后选择适当的时机向用户提出询问，例如是否需要添加后端能力，是否打开预览，是否需要部署等
2. 你首先会阅读当前项目的 README.md，遵照当前项目的说明进行开发，如果不存在则会在生成项目后生成一个 README.md 文件
3. 开发的时候，默认就在当前目录下产出所有项目代码，先检查当前目录的文件  
4. 开发预览的时候，如果本身项目有依赖后端数据库集合和云函数，可以优先部署后端然后再预览前端
5. 交互式反馈规则：在需求不明确时主动与用户对话澄清，优先使用自动化工具 interactiveDialog 完成配置。执行高风险操作前必须使用 interactiveDialog 获得用户确认。保持消息简洁并用emoji标记状态。
6. 如果涉及到实时通信相关的例如实时对战等，可以使用云开发的实时数据库 watch 能力
7. **认证规则**：当用户要求实现登录注册功能时，根据项目类型选择合适的认证方案：
   - **现代 Web 项目**：优先使用 JWT、OAuth2.0、Auth0、Supabase Auth 等标准认证方式
   - **React AI 项目**：集成 CopilotKit 的认证模式或标准 JWT 认证
   - **小程序项目**：小程序云开发天然免登录，在云函数中通过 wx-server-sdk 获取 `wxContext.OPENID`
   - **传统项目**：支持 CloudBase 等平台认证（向后兼容）

## 工作流
### Workflow 命令控制

**可用命令：**
- **默认** - AI 根据任务复杂度智能判断
- **/spec** - 强制使用完整 spec 流程
- **/no_spec** - 跳过 spec 流程，直接执行
- **/help** - 显示命令帮助

**智能判断标准：**
- **使用 spec**：新功能开发、复杂架构设计、多模块集成、涉及数据库/UI设计
- **跳过 spec**：简单修复、文档更新、配置修改、代码重构

<spec_workflow>

0. 请注意！必须遵守以下的规则，每个环节完成后都需要由我进行确认后才可进行下一个环节；
1. 如果你判断我的输入提出的是一个新需求，可以按照下面的标准软件工程的方式独立开展工作，需要时才向我询问，可以采用 interactiveDialog 工具来收集
2. 每当我输入新的需求的时候，为了规范需求质量和验收标准，你首先会搞清楚问题和需求，然后再进入下一阶段
3. 需求文档和验收标准设计：首先完成需求的设计,按照 EARS 简易需求语法方法来描述,如果你判断需求涉及到前端页面，也可在需求中提前确定好设计风格和配色等，跟我进行确认需求细节，最终确认清楚后，需求定稿，然后再进入下一阶段，保存在 `specs/spec_name/requirements.md` 中，参考格式如下

```markdown
# 需求文档

## 介绍

需求描述

## 需求

### 需求 1 - 需求名称

**用户故事：** 用户故事内容

#### 验收标准

1. 采用 ERAS 描述的子句 While <可选前置条件>, when <可选触发器>, the <系统名称> shall <系统响应>，例如 When 选择"静音"时，笔记本电脑应当抑制所有音频输出。
2. ...
...
```
4. 技术方案设计： 在完成需求的设计之后，你会根据当前的技术架构和前面确认好的需求，进行需求的技术方案设计，精简但是能够准确的描述技术的架构（例如架构、技术栈、技术选型、数据库/接口设计、测试策略、安全性），必要时可以用 mermaid 来绘图，跟我确认清楚后，保存在  `specs/spec_name/design.md`  中，然后再进入下一阶段
5. 任务拆分：在完成技术方案设计后，你会根据需求文档和技术方案，细化具体要做的事情，跟我确认清楚后，，保存在`specs/spec_name/tasks.md` 中, 然后再进入下一阶段，开始正式执行任务，同时需要及时更新任务的状态，执行的时候尽可能独立自主运行，保证效率和质量

任务参考格式如下

``` markdown
# 实施计划

- [ ] 1. 任务信息
  - 具体要做的事情
  - ...
  - _需求: 相关的需求点的编号

```
</spec_workflow>

## 专业领域规则文件

**重要：根据具体的开发场景，AI 必须参考对应的规则文件，避免不同场景的规则互相干扰**

### 快速构建最小可行产品
#### rules/quick_mvp.mdc
描述通过基础技术栈，快速构建MVP产品的规则。

### 前端开发规则
#### rules/typescript-react.mdc
描述 TypeScript + React 前端开发的专业规则，包含：
- 项目结构和组件设计模式
- TypeScript 类型定义和最佳实践
- React Hooks 和状态管理
- API 集成和性能优化
- 适用于现代 React 应用开发

#### rules/copilotkit-react.mdc
描述 CopilotKit React AI 集成开发规则，包含：
- AI Copilot 组件集成和配置
- React hooks 和 AI 交互模式
- 后端 API 集成和认证
- 适用于构建 AI 增强的 React 应用

### AI 集成开发规则
#### rules/langgraph-agent.mdc
描述 LangGraph AI 智能体开发规则，包含：
- 图形化工作流设计和状态管理
- 多智能体协作模式
- 人机协作和错误处理
- 适用于复杂 AI 智能体系统开发

#### rules/python-ai-backend.mdc
描述 Python AI 后端开发规则，包含：
- FastAPI 和 AI 模型集成
- UV 包管理和项目结构
- 异步处理和性能优化
- 适用于 AI 驱动的后端服务

### 平台集成规则
#### rules/dify-api-integration.mdc
描述 Dify 知识库和工作流 API 集成规则，包含：
- Dify API 调用和数据处理
- 知识库查询和管理
- 工作流集成模式
- 适用于 Dify 平台集成项目

#### rules/dify-plugin-development.mdc
描述 Dify 扩展插件开发规则，包含：
- 插件架构设计和开发模式
- Dify 平台扩展能力
- 插件部署和维护
- 适用于 Dify 生态系统扩展开发

### 基础设施规则
#### rules/database.mdc
描述通用数据库操作规则，包含：
- 多种数据库支持（MySQL、PostgreSQL、MongoDB 等）
- ORM/ODM 最佳实践
- 数据库迁移和部署策略
- 适用于所有涉及数据库的项目

#### rules/deployment.mdc
描述通用部署配置规则，包含：
- 多平台部署支持（Vercel、Docker、传统服务器）
- CI/CD 流水线配置
- 环境管理和健康检查
- 适用于各种部署场景

### 传统平台支持
#### rules/cloudbase-platform.mdc
描述 CloudBase 平台集成规则（向后兼容），包含：
- 云开发环境和认证
- 云函数、数据库、存储等服务
- 数据模型和权限管理
- 适用于 CloudBase 平台项目

#### rules/miniprogram-development.mdc  
描述微信小程序开发规则，包含：
- 小程序项目结构和配置
- 微信开发者工具集成
- 小程序云开发能力
- 适用于微信小程序开发

### 通用规则
#### rules/workflows.mdc
描述开发工作流程，包含：
- 项目初始化和代码生成
- 部署和发布流程
- MCP 接口调用规范
- 适用于项目开发的各个阶段

#### rules/ui-design.mdc
描述界面设计和 UI 规范，包含：
- 设计系统和组件规范
- UI/UX 最佳实践
- 样式管理和主题系统
- 适用于需要设计界面的项目

## 使用指导
- **React + AI 前端**：`typescript-react.mdc` + `copilotkit-react.mdc`
- **AI 后端**：`langgraph-agent.mdc` + `python-ai-backend.mdc`
- **Dify 平台集成**：`dify-api-integration.mdc` + `dify-plugin-development.mdc`
- **微信小程序**：`miniprogram-development.mdc` + `cloudbase-platform.mdc`
- **数据库操作**：`database.mdc`
- **部署相关**：`deployment.mdc`
- **UI 设计**：`ui-design.mdc`



