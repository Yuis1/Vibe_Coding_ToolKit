---
dg-publish:
作者:
创建时间: 2026-03-04 18:42:17
修改时间: 2026-03-04 18:43:06
---

很多朋友都跟我反映说，没有办法创建真正有自己workspace、soul和memory的子代理。很羡慕我的小龙虾有一支强大的开发团队。虽然各种设置教程一大堆，但经常操作失败。所以我干脆开发了一个skill，大家安装后直接拿去按照配置向导进行配置就好了，等着奇迹发生吧。

![Image](%E7%94%A8%E5%AD%90%E4%BB%A3%E7%90%86%E6%A8%A1%E5%BC%8F%E4%B8%BA%E4%BD%A0%E7%9A%84Openclaw%E6%89%93%E9%80%A0%E4%B8%80%E6%94%AF%E5%86%9B%E5%9B%A2%E3%80%82%E8%BF%99%E6%AC%A1%E6%98%AFskill%EF%BC%8C%E4%B8%8D%E6%98%AF%E6%95%99%E7%A8%8B%E3%80%82%E7%9B%B4%E6%8E%A5%E9%A3%9F%E7%94%A8%E3%80%82/640.webp)

不废话，上干货。使用安全开心记得转发哦。

## Team Setup v2.0 — 灵活多代理开发团队配置向导

DeepEye

2026-03-01

## Coding Team Setup v2.0 — 灵活多代理开发团队配置向导

灵活搭建 2–10 位子代理开发团队，支持多团队命名、自定义协作流程 适用于 OpenClaw 平台。安装命令clawhub install coding-team-setup

## v2.0 新特性

特性 v1.0 v2.0

团队规模 固定 7 人 2–10 人可配置

团队命名 单一团队 多个命名团队并存

角色选择 仅 7 个预设 10 个预设 + 自定义角色

协作流程 固定 9 步 4 种模板 + 完全自定义

模型分配 硬编码 自动检测 + 手动覆盖

## 适用场景

-   搭建一个多角色协作开发团队（2–10 人）
    
-   需要多个团队并行工作，各自独立配置
    
-   需要自定义协作流程（不限于标准 9 步）
    
-   需要灵活的角色组合和模型分配
    

## 快速开始

## 交互式配置向导（推荐）

## \# 默认团队

node wizard/setup.js

## \# 命名团队（支持多个团队并存）

node wizard/setup.js --team alpha

node wizard/setup.js --team beta

## 向导步骤

1.  团队命名 — 给团队一个名字（支持多团队）
    
2.  选择角色 — 从 10 个预设角色中选 2–10 个，或添加自定义角色
    
3.  分配模型 — 自动检测已注册模型，或手动指定每个角色的模型
    
4.  选择协作流程 — 4 个预设模板或完全自定义
    
5.  写入配置 — 自动更新 openclaw.json + 创建 workspace 文件
    

## 预设角色（10 个）

角色 ID Emoji 类别 默认模型类型 职责

产品经理 pm 📋 管理 Balanced 需求分析、PRD、用户故事、验收标准

架构师 architect 🏗️ 工程 Strongest 系统架构设计、API 规范、数据模型

前端开发 frontend 🎨 工程 Code UI 组件开发、页面交互、前端性能

后端开发 backend ⚙️ 工程 Code API 开发、数据库设计、业务逻辑

测试工程师 qa 🔍 质量 Balanced 测试用例、自动化测试、缺陷跟踪

运维工程师 devops 🚀 运维 Strongest CI/CD、容器化部署、监控告警

代码艺匠 code-artisan 🛠️ 质量 Code 代码审查、重构优化、规范制定

数据工程师 data-engineer 📊 工程 Code 数据管道、ETL、数据分析

安全工程师 security 🔒 质量 Strongest 安全审计、渗透测试、策略制定

技术文档 tech-writer 📝 管理 Balanced API 文档、用户手册、知识库

## 自定义角色

向导支持添加完全自定义的角色：

-   角色 ID — 小写标识符（如 ml-engineer）
    
-   显示名称 — 展示用名称
    
-   Emoji — 角色标识
    
-   职责描述 — 角色负责的工作内容
    
-   模型类型 — 选择 Strongest / Code / Balanced / Fast / Long Context
    

## 协作流程模板（4 种）

## 1\. 标准 9 步协作流程（standard-9step）

适合完整项目开发，需要严格流程控制。

1.  PM 产出 PRD 和用户故事
    
2.  Architect 架构评审与技术方案（与 PM 反馈回路）
    
3.  Frontend + Backend 并行开发
    
4.  Code Artisan 代码审查与优化
    
5.  QA 测试
    
6.  PM + QA 共同确认可交付
    
7.  DevOps 测试环境部署
    
8.  用户确认测试环境
    
9.  DevOps 生产环境部署
    

## 2\. 快速 3 步流程（quick-3step）

适合小型功能、hotfix、快速迭代。

1.  Frontend + Backend 直接开发（并行）
    
2.  Code Artisan 代码审查（可选）
    
3.  DevOps 部署（可选）
    

## 3\. 全栈独角兽（fullstack-solo）

适合 2–3 人精简团队。

1.  PM 需求与设计
    
2.  Frontend + Backend 全栈开发（并行）
    
3.  QA 测试与部署
    

## 4\. 完全自定义（custom）

完全自由定义协作步骤：

-   自由定义步骤数量
    
-   每步指定一个或多个角色
    
-   支持并行执行标记
    
-   可设置反馈回路（feedback loop）
    
-   可标记可选步骤
    

## 多团队支持

一个 OpenClaw 实例可以同时运行多个独立团队：

## \# 团队 alpha：前端专项团队

node setup.js --team alpha

## \# 选择: frontend, qa, devops

## \# 团队 beta：后端专项团队

node setup.js --team beta

## \# 选择: backend, architect, qa, devops

## \# 团队 gamma：全栈团队

node setup.js --team gamma

## \# 选择: 全部角色

## 团队隔离机制

-   每个团队的 Agent ID 自动带团队前缀：alpha-frontend、beta-backend
    
-   各团队 allowAgents 自动合并，互不干扰
    
-   团队配置保存在：teamtask/teams/<团队名>.json
    

## 模型分配

## 自动检测

向导自动扫描 openclaw.json 中已注册的模型，按类型匹配：

模型类型 适用角色 自动检测规则

Strongest Reasoning Architect、DevOps、Security 匹配 /opus/i

Code Specialized Frontend、Backend、Code Artisan 匹配 /codex/i

Balanced PM、QA、Tech Writer 匹配 /sonnet/i

Fast 简单任务 匹配 /haiku/i

Long Context 跨文件分析 匹配 /gemini.\*pro/i

## Fallback 链

每个角色自动生成 3 级 fallback 链，确保主模型不可用时自动降级：

主模型失败 (429/Timeout) → Fallback 1 → Fallback 2 → Fallback 3

## 手动覆盖

选择”手动分配”模式时，可以为每个角色单独指定主模型和 3 个 fallback。

## 目录结构

~/.openclaw/

├── openclaw.json

## 所有团队的 agent 配置

├── workspace/

│ └── teamtask/

│ ├── teams/

## 团队 manifest

│ │ ├── default.json

│ │ ├── alpha.json

│ │ └── beta.json

│ └── tasks/

## 项目任务目录

└── agents/

## 子代理目录

├── pm/

## default 团队

│ └── workspace/

│ ├── SOUL.md

│ ├── AGENTS.md

│ ├── TOOLS.md

│ └── USER.md

├── alpha-frontend/

## alpha 团队

├── beta-backend/

## beta 团队

└── ...

## 技能文件结构

skills/coding-team-setup/

├── SKILL.md

## 完整文档

├── README.md

## 简要说明

├── clawhub.yaml

## ClawHub 发布元数据

├── config/

│ └── roles.json

## 角色模板 + 流程模板 + 模型类型定义

├── templates/

│ └── SOUL-template.md

## SOUL.md 模板

└── wizard/

└── setup.js

## 交互式配置向导 (v2.0)

## 唤醒协议

@codingteam wake up — 激活默认团队全体子代理

@codingteam <团队名> wake up — 激活指定团队

@codingteam <角色名> — 激活指定角色

@codingteam 收工 — 全员休眠

## 常见问题

问题 原因 解决方案

agents\_list 只显示 main allowAgents 缺少 agent ID 重新运行向导或手动添加

Spawn 子代理超时 Rate Limit 或模型不可用 检查 fallback 链配置

多团队 ID 冲突 未使用 --team 参数 用 --team 区分团队

Workspace 文件缺失 手动删除了目录 重新运行向导即可恢复

配置不生效 Gateway 未重启 执行 openclaw gateway restart

## 实战经验总结

1.  allowAgents 必须在 main agent 的 subagents 下 — 放在 defaults.subagents 下不生效
    
2.  模型 ID 必须包含完整 provider 前缀 — 如 custom-llmapi-lovbrowser-com/anthropic/claude-opus-4.6
    
3.  修改 openclaw.json 后必须重启 Gateway — openclaw gateway restart
    
4.  并发控制 — 同时 spawn 太多子代理会触发 Rate Limit，建议分批启动
    
5.  团队前缀 — 多团队模式下 agent ID 自动带前缀，spawn 时要用完整 ID
    

## 系统要求

-   OpenClaw 已安装且 openclaw.json 存在
    
-   Node.js 18+
    
-   至少注册一个模型
    

## 版本历史

版本 日期 变更

2.0.0 2026-03-01 灵活 2-10 代理、多团队、自定义流程、10 预设+自定义角色

1.0.0 2026-02-25 初版：固定 7 代理团队

由 DeepEye 制作 · 发布于 ClawHub · coding-team-setup@2.0.0