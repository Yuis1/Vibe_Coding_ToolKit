# 🤖 AI Vibe Coding 工具及方法论

## 安装AI IDE
### Claude Code
- [Claude Code 安装的官方指南](https://docs.anthropic.com/en/docs/claude-code/setup#install-and-authenticate)

Windows下安装有几个要点：

- 需要安装 Git for Windows，并且指定环境变量 CLAUDE_CODE_GIT_BASH_PATH="C:\Program Files\Git\bin\bash.exe"
- 使用PowerShell进行原生安装 `& ([scriptblock]::Create((irm https://claude.ai/install.ps1))) latest`
- 实际使用时，目前还要在Git Bash里

### Gemini Cli
- [Google Cli 安装的官方指南](https://google-gemini.github.io/gemini-cli/)

## 辅助工具推荐
### [claude-code-router](https://github.com/musistudio/claude-code-router)  
CC模型路由工具  

- 模型路由: 根据需求将请求路由到不同的模型（例如，后台任务、思考、长上下文）。
- 多提供商支持: 支持 OpenRouter、DeepSeek、Ollama、Gemini、Volcengine 和 SiliconFlow 等各种模型提供商。
- 请求/响应转换: 使用转换器为不同的提供商自定义请求和响应。
- 动态模型切换: 在 Claude Code 中使用 /model 命令动态切换模型。
- GitHub Actions 集成: 在您的 GitHub 工作流程中触发 Claude Code 任务。

### [BMad Method](https://github.com/bmad-code-org/BMAD-METHOD)

BMAD (Business, Market, Architecture, Development) 是一个AI驱动的敏捷开发方法论，通过专业化智能体团队实现从商业需求到技术实现的完整工作流。  

**核心理念**  
- **智能体规划**: 专业智能体协作创建详细、一致的PRD和架构文档
- **上下文工程开发**: 将详细计划转换为超详细的开发故事
- **角色专业化**: 每个智能体专注特定领域，避免角色切换导致的质量下降

**BMAD智能体体系**  
- **PO (Product Owner)** - 产品负责人Sarah：需求分析、用户故事、验收标准
- **Analyst** - 业务分析师Mary：市场研究、竞争分析、商业案例
- **Architect** - 系统架构师Winston：技术架构、系统设计、技术选择
- **SM (Scrum Master)** - 敏捷教练：任务分解、冲刺规划、流程协调
- **Dev (Developer)** - 开发工程师：代码实现、技术文档
- **QA (Quality Assurance)** - 质量保证：测试策略、质量验证
- **Orchestrator** - 主编排器：工作流协调、智能体转换、多智能体任务管理

### [code-pilot](https://github.com/ysicing/code-pilot)
支持三大工作流系统：
- Requirements-Pilot：一键自动化、快速迭代、质量门控、简单直接
- Kiro 规范创建工具：需要详细功能规范的复杂功能设计 核心优势：引导式规范创建、需求澄清、设计文档生成
- BMAD AI团队协作工作流：企业级项目、需要多角色协作、最高质量要求；模拟完整AI团队协作开发，包含产品经理、架构师、Scrum Master、开发者、QA工程师。

## 规则集合
### Kiro风格的Spec工作流
目录：kiro_spec_workflow

介绍：Kiro风格的 AI 编程提示词规则集合，让主流的 AI IDE 支持 Sepc 开发流程，极大提升需求精准度和工程掌控力。  
一个 Spec 可以说是一个规格/规范，用来解决如何把模糊的想法转化为详细的实施计划、跟踪和验收标准的问题。

通过运行 kiro_spec_workflow/copy_rules.sh 进行快速复制规则包到对应IDE。

## 文章
收集Vibe Coding 相关实践和心得的文章。  

- article/Getting_Good_Results_from_Claude_Code：类似于Spec工作流
- article/Quick_MVP：使用最基础的Web技术栈，化繁为简快速编写MVP
- article/Code_With_AI_Free：如何用 AI 进行低成本、免费编程

## 🎉 广告
推荐使用Claude Code 中转站：[AnyRouter](https://anyrouter.top/register?aff=qndY)，通过我的 [链接注册送 100$ 额度](https://anyrouter.top/register?aff=qndY)，每天登录送 25$ 额度，可以覆盖日常轻度使用。  
有大陆优化线路，可以免翻墙调用Claude Code。


## 🙏 致谢

- **基础提示词来源**：[CloudBase-AI-ToolKit](https://github.com/TencentCloudBase/CloudBase-AI-ToolKit)
- **Kiro Spec 工作流详解**：[布克 - AI 编程不靠运气，Kiro Spec 工作流复刻全攻略](https://mp.weixin.qq.com/s/3j6lG50isbuSH4p64TsNag)
- **Claude Code Commands来源**：
    - checkpoint 命令：[手工川-快试试我最新的神级 CCC](https://mp.weixin.qq.com/s/P5OmJH8gwr7dq8RQv0MZmQ)
    - generate-command 命令：[手工川-你离顶级 Vibe Coder 至少差一个超级指令](https://mp.weixin.qq.com/s/TgXRZE33yiUzpBOVAai08g)