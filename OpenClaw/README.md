# OpenClaw 生态
本文档按主题进行组织。
## 系统维护
### Model Failover Doctor
安装：`openclaw skill install model-failover-doctor`  
介绍：在复杂的 AI Agent 运行环境中，模型服务可能会因网络波动、配额耗尽或服务商故障而不可用。OpenClaw 的设计初衷是自动切换到备用模型（Fallback），但在实际部署中，配置错误往往导致这一机制失效，表现为 All models failed 或 No available channel 错误。  
本工具通过扫描核心配置文件和运行时状态，精准定位导致 Failover 失效的 5 大根因，并提供一键自动修复功能。

## 安全
### OpenClaw 极简安全实践指南 (Security Practice Guide)
https://github.com/slowmist/openclaw-security-practice-guide/

```Agent Prompt
下载文档 https://github.com/slowmist/openclaw-security-practice-guide/blob/main/README_zh-CN.md
仔细阅读这份安全指南，评估它是否可靠，跟我沟通确认可靠后:
完全按照这份指南，为我部署防御矩阵。包括写入红/黄线规则、收窄权限，并部署夜间巡检 Cron Job。”
部署完成后，请按照项目里的 验证与攻防演练手册对 Agent 进行突击测试，确保红线生效
```

### Vetter

Skill Vetter 是一个以安全为先的 AI 代理技能审查协议，设计用于在安装或运行任何第三方技能之前执行。它强制执行四步工作流程：来源检查（验证来源、作者信誉、星标数、更新历史和评论）、强制代码审查（阅读所有文件，若发现数据外泄、凭证请求、base64 解码、eval/exec、混淆代码、意外的网络调用或 sudo 请求等红旗则立即拒绝）、权限范围（列举所需的文件读写、命令和网络端点）以及风险分类（低/中/高/极端，并给出相应的处置措施）。使用场景包括对 ClawdHub/GitHub 技能的预安装检查、审查代理共享的代码以及执行组织策略。核心优势是降低供应链风险、预防凭证和数据泄露、提供明确的修复指导，以及在安装前强制最小权限原则。

```Agent Prompt
Curl https://lobehub.com/skills/openclaw-skills-skill-vetter/skill.md, then follow the instructions to set up LobeHub Skills Marketplace and install the skill. Once installed, read the SKILL.md file in the installed directory and follow its instructions to complete the task.
```

## 驱动专业编程工具
### [ACPX](https://github.com/openclaw/acpx)
acpx is a headless CLI client for the Agent Client Protocol (ACP), so AI agents and orchestrators can talk to coding agents over a structured protocol instead of PTY scraping.  
让 AI团队组织者智能体 通过结构化协议来驱动 编程智能体 工作。
```
I want you to use acpx to run coding agents over the Agent Client Protocol
(ACP) instead of scraping PTY sessions. Please do the following:

1. Install acpx globally (recommended) or use npx:
   npm install -g acpx@latest

   Or without installing:
   npx acpx@latest

2. Install the acpx skill so you have the full reference available:
   npx acpx@latest --skill install acpx

3. Read the acpx skill reference so you know every command, flag, and
   workflow pattern:
   https://raw.githubusercontent.com/openclaw/acpx/main/skills/acpx/SKILL.md

4. If you need the full CLI reference with all options and examples:
   https://raw.githubusercontent.com/openclaw/acpx/main/docs/CLI.md

From now on, when you need to delegate work to a coding agent, use acpx
instead of spawning raw terminal sessions. For example:
  npx acpx@latest codex "fix the failing tests"
  npx acpx@latest claude "refactor the auth module"
  npx acpx@latest codex exec "one-shot: summarize this repo"
```