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

## Skills
### skills.sh
推荐等级：必选  
官网 https://skills.sh/   
Vercel出品，支持将git仓库中的skills一键安装到市面上所有编程工具，并且附带Skills的Stars数量排名，极大提升了Skills的管理效率。

### 重要skills
- skill_creator：创建技能的元技能。
- find-skills：按需查找并安装技能
- agent-browser：适用于网页内容简单提取。
- browser-use：日常测试、自动化流程。适用于交互复杂、链路较深、依赖登录态的操作。
- [frontend-design](https://skills.sh/anthropics/skills/frontend-design)：增加ChatGPT的前端审美，必备
- [Superpowers](https://github.com/obra/superpowers)

 superpowers 的 /brainstorming 和 gstack 的 /office-hours。两者都采用了苏格拉底式提问，通过连续追问引导你一步步找到自己真正的目的：你想解决什么问题？为什么现有方案不够好？你真正想达成的目标是什么？这个方向值得投入吗？

 AI 让我们拥有了前所未有的生产力，但生产力不等于价值。我们有没有想过一个更根本的问题：我们正在做的这件事，到底有没有用？到底有没有市场？

## MCP
- LangChain_docs：search LangChain/LangGraph/DeepAgent official docs for best practices and API details
- Chrome DevTools：用于前端深度调试。能看性能追踪、调用栈、网络请求。
- Playwright：用于前端跨浏览器兼容性测试。

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

使用手册： https://mp.weixin.qq.com/s/GoQsIkhPRRdbrxSEa7vDlg

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


### [pua](https://github.com/tanweai/pua)
`npx skills add https://github.com/tanweai/pua --skill pua`  
一个 AI Coding Agent 技能插件，用中西大厂 PUA 话术驱动 AI 穷尽所有方案才允许放弃。支持 Claude Code、OpenAI Codex CLI、Cursor、Kiro、CodeBuddy、OpenClaw、Google Antigravity 和 OpenCode。三重能力：

- PUA 话术 — 让 AI 不敢放弃
- 调试方法论 — 让 AI 有能力不放弃
- 能动性鞭策 — 让 AI 主动出击而不是被动等待


## 多智能体
### [文章：OpenClaw + Codex/ClaudeCode Agent Swarm: The One-Person Dev Team](https://x.com/elvissun/status/2025920521871716562)
通过OpenClaw高效驱动Codex/ClaudeCode智能体集群。
```
一天 94 次提交 。我最高效的一天——我进行了 3 次客户通话，一次都没有打开过编辑器。平均每天大约 50 次提交。
30 分钟内 7 个 PR。从想法到生产非常快，因为编码和验证大多是自动化的。
提交 → MRR: 我用它来构建一个真实的 B2B SaaS——将其与创始人领导的销售捆绑，以实现大多数功能请求的当日交付。速度将潜在客户转化为付费客户。
```

### [GStack](https://github.com/garrytan/gstack)
这是由 Y Combinator CEO **Garry Tan** 开源的个人实战配置。

**思考与规划阶段：**

-   `/office-hours` - YC Office Hours 风格，6 个强制问题重新定义产品，挑战你的假设
-   `/plan-ceo-review` - CEO 视角重新思考问题，找到隐藏的 10 星产品（4 种模式：扩展/选择性扩展/保持范围/缩减）
-   `/plan-eng-review` - 工程经理锁定架构、数据流、边界情况和测试计划
-   `/plan-design-review` - 高级设计师对每个设计维度打分（0-10），解释 10 分是什么样，然后编辑计划达到目标
-   `/design-consultation` - 从零构建完整设计系统，了解行业现状，提出创意风险，生成真实产品原型

**开发与审查阶段：**

-   `/review` - 资深工程师找出通过 CI 但会在生产环境爆炸的 bug，自动修复明显问题
-   `/investigate` - 系统化根因调试，铁律：没有调查就没有修复，3 次失败后停止
-   `/design-review` - 会写代码的设计师，审查后直接修复，原子提交 + 前后截图

**测试阶段：**

-   `/browse` - 给 AI 一双眼睛，真实 Chromium 浏览器、真实点击、真实截图
-   `/qa` - QA 主管测试应用、发现 bug、用原子提交修复、重新验证，为每个修复自动生成回归测试
-   `/qa-only` - 纯报告模式，只报告 bug 不修改代码
-   `/setup-browser-cookies` - 从真实浏览器导入 cookies，测试需要认证的页面

**发布与文档阶段：**

-   `/ship` - 发布工程师同步主分支、运行测试、审查覆盖率、推送、打开 PR，如果没有测试框架会自动引导创建
-   `/document-release` - 技术写作者更新所有项目文档以匹配刚发布的内容，自动捕捉过期的 README
    

**反思阶段：**

-   `/retro` - 工程经理主持的团队周报，每人分解、发布连续性、测试健康趋势、成长机会

**强力工具（6 个）：**

-   `/codex` - 第二意见，OpenAI Codex CLI 的独立代码审查（3 种模式：审查/对抗性挑战/开放咨询）
-   `/careful` - 安全护栏，在破坏性命令前警告（rm -rf、DROP TABLE、force-push）
-   `/freeze` - 编辑锁定，限制文件编辑到一个目录
-   `/guard` - 完全安全模式，`/careful` + `/freeze` 组合
-   `/unfreeze` - 解除锁定
-   `/gstack-upgrade` - 自我升级到最新版本

#### 优势和创新

1.  `/office-hours` **精准发现真问题** 它会根据不同视角（创业、hackathon、side project）问你不同的问题。我有个项目本来想做“开发者工具”，用了 `/office-hours` 之后发现真正的机会在“帮非技术创始人理解技术债务”——完全不同的方向，但更有价值。
2.  **多 AI 交叉审查**   `/codex` 调用 OpenAI 的独立审查，当 `/review`（Claude）和 `/codex`（OpenAI）都审查同一分支时，会生成交叉模型分析报告。两个 AI 都发现的问题通常是真问题，单一模型发现的可能是误报。

### [Agency-Agents](https://github.com/msitarzewski/agency-agents)
这不仅是一个 Prompt 库，它更像是一本**“AI 时代的数字员工操作手册”**。该项目目前拥有超过 110 个预置的专家角色，覆盖了从后端架构到“现实检查员（Reality Checker）”等各种细分工种。

**核心特色：**
* **深度的专业流程**：不同于简单的“你是一个开发者”，它为每个角色提供了详尽的任务清单、沟通风格和交付标准（Definition of Done）。例如，它的 QA 智能体被设定为“极度挑剔”，甚至会要求你提供视觉证明或至少找出 3-5 个问题才允许通过。
* **多维度覆盖**：它将智能体划分为工程、设计、营销、法律、空间计算等 9 个大部门，甚至包含“注入奇思妙想（Whimsy Injector）”这种极具个性的角色。
* **跨工具兼容**：这些 `.md` 格式的角色文件可以直接注入到 **Claude Code**、**Cursor** 或 **Aider** 中，瞬间提升这些通用 AI 助手在特定领域的专业度。

安装时注意：不是简单的拷贝智能体角色文件，而是需要通过项目内脚本对不同的编程工具进行格式转换后才可以拷贝。

## Cowork
### AionUI
AionUI 是一个**面向 Agentic Workflow（智能体工作流）的下一代 UI 框架**。它旨在为 AI 驱动的应用提供“动态生成”的交互界面，使 AI 不再局限于对话框，而是能够根据任务上下文实时构建功能组件。

- 支持的 Agent： 内置 Agent（零配置） • Claude Code • Codex • Qwen Code • Goose AI • OpenClaw • Augment Code • iFlow CLI • CodeBuddy • Kimi CLI • OpenCode • Factory Droid • GitHub Copilot • Qoder CLI • Mistral Vibe • Nanobot 等
- 现成的专业助手 — 内置 11+ 个专业助手（Cowork、PPTX 生成器、PDF 转 PPT、3D 游戏、UI/UX Pro Max 等），拿来就能用
- 支持远程访问：WebUI + Telegram / Lark / DingTalk

### **Paperclip (paperclipai/paperclip)**
Paperclip 是一个**开源的 AI 智能体编排平台（Agent Orchestration Platform）**。它的核心理念是“**如果你把 AI 编码智能体看作员工，那么 Paperclip 就是这家公司**”。它不提供底层的模型或单一的对话框，而是为多个自主运行的 AI Agent 提供一个完整的“组织架构层”。

**核心定位：**
* **零人力公司（Zero-Human Company）驱动引擎**：它允许用户通过 UI 界面，像管理真实公司一样去管理 AI 智能体集群。
* **组织架构管理**：用户可以在系统中设置 **部门（Departments）**、**组织架构图（Org Charts）**、**预算控制（Budgets）** 以及 **治理策略（Governance）**。
* **非侵入性编排**：它是“无偏好（Unopinionated）”的。无论你使用的是 Claude、OpenAI 的原生模型，还是 OpenClaw 等第三方 Agent，只要它们能接收指令并返回心跳信号，Paperclip 就能将其“入职”到公司架构中。

**核心功能细节：**
* **AI CEO 模式**：系统通常由一个中央“CEO 智能体”领导，它可以拆解复杂目标、招聘下级 Agent、分配任务并审核产出结果。
* **任务与审批流**：支持任务的自动分发和跨 Agent 的审批机制，模仿现实企业的协作流程。
* **全透明看板**：提供一个集中式的 Dashboard（仪表盘），让用户能够实时监控整个 AI 团队的执行进度、消耗成本和当前状态。
* **技术栈**：基于 Node.js 服务端和 React 前端构建，强调高性能与直观的交互体验。

### 对比总结
Paperclip 侧重于**后端组织架构和任务编排**，**AionUI** 更专注于 **前端交互的动态生成（Generative UI）**。

* **Paperclip** 解决的是：如何让 50 个 Agent 像一个公司一样有序工作？
* **AionUI** 解决的是：如何让这 50 个 Agent 能够根据需要，为用户实时变幻出最合适的操控界面？

## 部署
### [clawhost](https://github.com/fastclaw-ai/clawhost)
开源 ClawHost，基于集群的 OpenClaw 多租户部署面板1. 在 k8s pod 部署。  
1. 挂载 pvc 实现持久存储
2. 支持 Rest API，对 OpenClaw Bot 进行创建、更新、重启等操作，可通过接口管理每个 OpenClaw 内的 models、channels、skills
3. 支持自定义镜像，打包常用的工具、extensions、skills 到 OpenClaw 实例
4. 管理员可创建多个 App，每个 App 可调接口创建多个 OpenClaw Bot
5. 内置管理面板，可视化管理 Apps，Bots

用途：  
1. 养虾需求很大，用户需要开箱即用的方案，ClawHost 可以帮你实现 OpenClaw 托管平台
2. 公司内部希望给每个员工配一个专业虾，ClawHost 可以帮你做私有化部署，统一管理

用法：  
1. 选择一个云服务厂商，购买托管版 k8s 集群，开通 nas 存储
2. 拉取 ClawHost 项目代码，查看 deploy 文件，通过 kubectl、helm 部署到 k8s 集群
3. 解析一个域名到 k8s 集群，每一个创建的 OpenClaw Bot，可通过子域名访问 Web UI
4. 访问 ClawHost 管理面板，可视化创建 Apps，Bots
5. 如果需要对外提供 SaaS 服务，需要自行实现前端应用，通过 App Token，调用 API 创建 Bot


## 数据存储
### [Mindsdb](https://mindsdb.com)
MindsDB 是一个联邦数据与 AI 上下文引擎。它通过 SQL 接口将 300 多种数据源（数据库、SaaS、文件）与 AI 模型（LLMs、Agent 框架）无缝连接，无需复杂的 ETL 流程，即可在实时业务数据上构建、部署和扩展企业级 AI Agent。

**核心价值**  
- 统一接入：将分散的 Excel、SQL 数据库、API 统一抽象为可查询的数据库视图。
- 语义对齐：利用 AI 自动理解并映射不规范的数据表头。
- Agent 骨干：基于最新的 Pydantic AI 架构，提供高性能、类型安全的数据问答与自动化决策能力。
- Model-In-Database：直接通过 SQL CREATE MODEL 或 CREATE AGENT 即可把 AI 逻辑部署在数据侧。

