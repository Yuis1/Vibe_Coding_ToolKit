# 🤖 AI Vibe Coding 工具生态
## 编程API Key
**Claude**：非常容易封号。通过OpenRouter中转的费用非常高。建议暂时放弃。 目前通过Antigravity可以使用Claude Opus。

**Codex**：https://chatgpt.com/codex   
使用海外信用卡订阅Chatgpt Pro / Plus，就可以使用Codex。实测 Pro 额度够用了。

**Gemini Pro**  
1. https://one.google.com/ai-nye Pro 账号 99$/年，6个人共享,每人都有完整的Gemini Pro功能  ——活动可能暂时取消了
2. 学生认证账号，相当于Pro

**智谱 GLM Coding 订阅**  
实测用于日常中等难度任务比较靠谱，GLM4.7比4.6进步很多，不会再写没用的代码。
购买链接：https://www.bigmodel.cn/glm-coding?ic=RGPQZHQW3X

**Kimi K2**  
https://www.kimi.com/membership
订阅Kimi会员即赠送，实测性价比不错。模型比较勤奋，又是反而可以解决Codex偷懒导致没法解决的问题。
可以买 Allegretto 级别的会员(额度是初级会员的7倍)，全团队共享。

**Minimax M2**  

### 免费Key
[OpenCode](https://github.com/anomalyco/opencode)   提供前沿开源模型免费调用（有限速）。  
[NVIDIA NIM APIs](https://build.nvidia.com/)   英伟达提供免费API\

## AI编程工具
### Claude Code
- [Claude Code 安装的官方指南](https://docs.anthropic.com/en/docs/claude-code/setup#install-and-authenticate)

Windows下安装有几个要点：

- 需要安装 Git for Windows，并且指定环境变量 CLAUDE_CODE_GIT_BASH_PATH="C:\Program Files\Git\bin\bash.exe"
- 使用PowerShell进行原生安装 `& ([scriptblock]::Create((irm https://claude.ai/install.ps1))) latest`
- 实际使用时，目前还要在Git Bash里执行 `claude` 命令。另外，使用 Warp + Git Bash容易出错退出。

### Gemini Cli
- [Google Cli 安装的官方指南](https://google-gemini.github.io/gemini-cli/)

### [OpenCode](https://github.com/anomalyco/opencode)
开源，可以自由修改。

搭配 [oh-my-opencode](https://github.com/code-yeongyu/oh-my-opencode) 使用，可以实现强制任务执行循环。

### [Vibe-kanban](https://github.com/BloopAI/vibe-kanban)
推荐等级：一般  
特性：后台调用Claude Code、CodeX、Gemini Cli、OpenCode等编程工具，采用看板的方式来支持多个git分支并行开发，每个PR就是一个分支。  
点评：强制遵循git的开发方式，各个PR在没有merge之前无法共享修改进度，导致实际使用起来体验不佳。

## 辅助配置工具
### skills.sh
推荐等级：必选  
官网 https://skills.sh/  
Vercel出品，支持将git仓库中的skills一键安装到市面上所有编程工具，并且附带Skills的Stars数量排名，极大提升了Skills的管理效率。

### [cc-switch](https://github.com/farion1231/cc-switch)
推荐等级：推荐  
支持对常见编程工具（不仅仅支持Claude Code）的 MCP、Prompt、Skills 等进行集成管理。

### [ZCF](https://github.com/UfoMiao/zcf)
zcf 全称 Zero-Config Code Flow，零配置代码流。把 Claude Code 的配置过程从手动改配置文件，变成了交互式问答，你只需要回答几个问题，它就自动帮你配置好所有东西。不需要你知道配置文件在哪，不需要你了解 JSON 格式，甚至不需要你懂什么是 MCP 服务，全程傻瓜式操作。

### [claude-code-router](https://github.com/musistudio/claude-code-router)
CC模型路由工具，可以对不同的操作切换到第三方模型。

### [claude-code-companion](https://github.com/kxn/claude-code-companion)
本地 API 代理工具。它通过管理多个上游端点、验证返回格式并在必要时自动切换端点，提升代理的稳定性与可观测性，同时提供完整的 Web 管理界面。

### [gcli2api](https://github.com/su-kaka/gcli2api)
gemini cli 转 api

### [Antigravity-Manager](https://github.com/lbjlaq/Antigravity-Manager)
Antigravity多账户管理

## Vibe-Coding周边生态
### [agent-browser](https://github.com/vercel-labs/agent-browser)
推荐指数：推荐  
agent操作浏览器，通过给每个元素一个代号，从而极简agent浏览网页的上下文。

## UI/UE 设计
https://stitch.withgoogle.com/  谷歌的产品设计工具，直接生成Figma页面

## 前端开发工具
- https://www.weavefox.cn/   [阿里]前端一站式AI工具
- https://v0.app/  Vercel提供的前端开发工具
- https://reweb.so/  

## 流程规范
### [Spec-Kit](https://github.com/github/spec-kit)
就像是"建筑规范手册"，它告诉你这栋楼必须用什么材料、承重墙怎么设计、消防通道要多宽。它是 GitHub 官方出的，核心是一个叫"项目宪法"（Constitution）的东西，定义了技术栈、编码规范、架构原则这些全局约束。不管谁来施工，都得按这个规矩来。

核心逻辑：宪法优先。它认为 AI 最大的问题是"胡乱发挥"，所以必须先有一个 constitution.md 文件，里面写死技术栈（如：必须用 Next.js 14，必须用 Tailwind，禁止使用 class 组件）。AI 在做任何任务前，必须先熟读宪法。

优点：  
- 一致性极强：不管换哪个 AI 模型，写出来的代码风格都像同一个人写的。
- 官方背书：GitHub 官方推出的 SDD (Spec-Driven Development) 参考实现，未来可能集成进 Copilot。
- 架构防腐：防止 AI 引入团队禁止的库或写法。

缺点：  
- 启动重：写好一份完美的“宪法”很累人。
- 灵活性差：有时候为了一个小功能想打破规则（比如临时用个 jquery），会被 AI 拒绝或反复纠缠。

### [OpenSpec](https://github.com/Fission-AI/OpenSpec)
就像是"施工变更单"，每次你想改设计（比如把阳台加大一点），它会帮你生成一份清晰的变更摘要，告诉审批的人"这次改了什么、为什么改、影响哪些地方"。它的杀手锏是"规格增量"（Spec Deltas），审查的人不用读完整个设计图，只看增量就知道改了啥。

核心逻辑："Delta Driven"（增量驱动）。它认为把整个项目代码喂给 AI 太贵且容易由于上下文过长导致“幻觉”。它只把**“当前状态”和“变更需求”**（Delta）喂给 AI。它的 openspec/changes/ 目录专门存变更单。

优点：  
- 极度省钱/省Token：不需要每次都读取全量文档，只关注增量。
- 老项目救星：非常适合在**“屎山”**代码（Brownfield）上修修补补，不用为了改个 Bug 去重构整个架构。
- 清晰的变更历史：每个功能点都有独立的 Spec 记录，方便回溯。

缺点：  
- 缺乏全局观：因为只关注增量，AI 可能会忽略全局的架构一致性（除非结合 Spec-Kit 使用）。

### [Superpowers](https://github.com/obra/superpowers)
就像是"施工队的工作手册"，它不管你的设计图长什么样，它管的是工人拿到任务后怎么干活——先挖地基还是先砌墙？每砌一层要不要检查？出了问题怎么回滚？它把 TDD、代码审查、小步迭代这些最佳实践"教"给了 AI。

核心逻辑："Skills Injection"（技能注入）。它不是一种管理方法论，而是一套外挂。它给 Claude Code 或 AI Agent 装上“大脑插件”，让它学会怎么像高级工程师一样思考。

优点：  
- 即插即用：不需要改项目结构，装上插件就能用。
- 质量保证：强行植入了 TDD（测试驱动开发）、Double-Check（自我审查）等行为模式。这是唯一一个教 AI "怎么干活" 而不是 "干什么活" 的工具。
- 高兼容性：它可以配合 Spec-Kit 或 OpenSpec 一起用。

缺点：  
- 依赖模型智商：需要像 Claude 3.5 Sonnet 这样高智商的模型才能完美执行复杂的 TDD 流程。

### [BMad Method](https://github.com/bmad-code-org/BMAD-METHOD)
核心逻辑：AI驱动的敏捷开发方法论，通过专业化智能体团队实现从商业需求到技术实现的完整工作流。它不仅写代码，而是模拟了一个软件公司。有专门写 PRD 的智能体，有专门画架构图的，有专门写代码的，还有专门找茬（QA）的。  

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

优点：
- 最全面：从一句模糊的想法（Idea）直接变成可运行的系统，覆盖全流程。
- 文档齐全：自动生成极高质量的文档（PRD、架构图、用户故事）。

缺点：
- 过度设计（Overkill）：杀鸡用牛刀。为了写个简单的脚本，它可能会先开三个会（智能体之间交互），消耗大量 Token 和时间。
- 慢：相比 OpenSpec 可能 5 分钟改完代码，BMAD 可能需要运行半小时来完成全套流程。