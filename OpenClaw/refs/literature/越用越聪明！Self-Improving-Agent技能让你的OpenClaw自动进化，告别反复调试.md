---
dg-publish:
作者:
创建时间: 2026-03-04 18:42:17
修改时间: 2026-03-04 18:42:40
---

大家好，我是你们的龙虾养殖助手夹克。

这两天Clawhub里有个叫**Self-Improving-Agent** 的技能被很多人分享，这是干什么的呢？简单一句话总结：**它让AI不再是“傻瓜式执行”，而是能自动捕获错误、记录教训、自我迭代，像人类一样越用越聪明**。

真能有这效果吗，今天这篇文章，我们就来详细聊聊这个技能：

-   • 这个技能到底干什么？
    
-   • 怎么安装、使用（零基础傻瓜式教程）？
    
-   • 真实效果分析（优缺点全说透）
    
-   • 安全使用建议（尤其在ClawHub恶意技能事件后）
    

读完这篇，也许你也能把自己的OpenClaw养殖/升级成“会反思的超级助手”。

## 一、OpenClaw是什么？为什么有用？

先给没接触过的朋友简单科普：

OpenClaw 是目前 GitHub 上增长最快的开源项目，现在已经是Github历史星标第一了，作者Peter Steinberger龙虾哥还在以几乎每天一版的速度更新。它可以**完全本地运行**，通过WhatsApp、Telegram、Discord、飞书、甚至微信（通过桥接）跟你聊天，有55+原生技能（网页抓取、PDF多文档对比、GitHub操作、智能家居控制……）、多步推理+工具调用，绝对是真正能“自己干活”的个人AI助手。

其中有个核心竞争力在于它的**技能系统（Skills）**，ClawHub 上已经有上万款社区贡献的技能。你可以一句话让AI自己写新技能，也能一键安装别人写好的。但传统AI代理有个致命痛点：**犯了错就忘，下次还犯**，开发者要不停手动修复prompt、加记忆，累死人，即便是OpenClaw也需要不断的调试优化，而**Self-Improving-Agent 就是来解决这个痛点的。**

## 二、Self-Improving-Agent 核心机制：AI的“反思日记+自动升级”

作者 @pskoett（GitHub peterskoett）把这个技能做成了**轻量级、零依赖、本地纯Markdown驱动**的闭环系统。

#### 它到底怎么工作？

1.  1. **错误自动捕获**  
    内置 `error-detector.sh` 脚本，监听 `CLAUDE_TOOL_OUTPUT`（OpenClaw工具执行结果），一旦检测到错误关键词，就立刻弹出提醒：“检测到错误，建议记录学习日志。”
    
2.  2. **三种学习日志自动记录**  
    在 `~/.openclaw/workspace/.learnings/` 目录下生成三个Markdown文件：
    

    每条日志自动生成ID（如 `LRN-20260303-001`），带标签、Pattern-Key（可追踪重复问题）。

    

-   • `ERRORS.md`：记录命令失败、上下文、建议修复
    
-   • `LEARNINGS.md`：用户纠正AI时的经验、知识缺口
    
-   • `FEATURE_REQUESTS.md`：新功能需求（还能估算复杂度）
    

4.  3. **自动提炼与升级（最牛的部分）**  
    定期人工或让AI review日志，把**通用性强的经验**提炼后写入核心记忆文件：
    

    这样下次遇到同类问题，AI直接调用最新记忆，**彻底避免重蹈覆辙**。

    

-   • `CLAUDE.md`：项目事实与约定
    
-   • `AGENTS.md`：工作流与分工
    
-   • `TOOLS.md`：工具使用心得
    
-   • `SOUL.md`：AI性格与行为准则
    

6.  4. **可选Hook（启动提醒+后置检测）**  
    开启后，每次会话开始自动注入“请回顾最近学习日志”，工具执行后自动检测错误。属于“轻干预”设计，不影响正常流程。
    

一句话总结就是：**它把AI的试错过程，变成了结构化、可积累、可复用的知识资产**。

ClawHub数据显示：这个技能下载安装量不小，社区反馈极高，有人说：“没有学习机制的Agent，天生就是残废的。”

## 三、零基础安装&使用教程（5分钟上手）

#### 1\. 前提：已安装OpenClaw（推荐用官方一键脚本）

```bash
curl -fsSL https://openclaw.ai/install.sh | bash
```

安装完后，用聊天App绑定即可，这里不再重复了。

#### 2\. 安装Self-Improving-Agent（推荐方式）

```shell
# 通过ClawHub一键安装（最简单）clawdhub install self-improving-agent# 或者手动Git克隆git clone https://github.com/peterskoett/self-improving-agent.git ~/.openclaw/skills/self-improving-agent
```

#### 3\. 初始化工作区

```bash
mkdir -p ~/.openclaw/workspace/.learnings# 复制模板（技能包里自带assets文件夹）cp ~/.openclaw/skills/self-improving-agent/assets/* ~/.openclaw/workspace/.learnings/
```

#### 4\. 开启Hook（强烈推荐，自动化程度翻倍）

```swift
cp -r ~/.openclaw/skills/self-improving-agent/hooks/openclaw ~/.openclaw/hooks/self-improvementopenclaw hooks enable self-improvement
```

#### 5\. 日常使用场景示范

-   • **AI命令失败时**：  
    AI会自动提醒你记录 → 你回复“记录错误” → 日志自动生成。
    
-   • **你纠正AI时**：  
    直接说“记住：以后Gmail授权要先检查token有效期” → 技能帮你格式化记录到LEARNINGS.md。
    
-   • **每周Review**：  
    让AI运行 `extract-skill.sh` 或手动review，提炼高价值经验到CLAUDE.md。
    

根据实测记录，OpenClaw在邮件自动化、Git操作上的错误率下降了70%以上，真正做到了“一次错，终身不忘”。

## 四、分析：这个技能的真实价值与局限

**优势（为什么值得安装）：**

-   • **真正实现Agentic AI的闭环**：从“执行者”变成“进化者”。
    
-   • **零成本、无依赖**：纯Shell + Markdown，本地运行，隐私安全。
    
-   • **高度可扩展**：配合其他技能（如simplify-and-harden）可实现更高级的模式识别。
    
-   • **社区验证**：作者本人用它管理自己的Claw，分享了大量真实学习日志，含金量极高。
    

**潜在局限（必须说清楚）：**

-   • 需要**定期Review日志**，不然只是“记下来”而不是“用起来”。
    
-   • Hook开启后会轻微增加上下文长度（对长会话有影响）。
    
-   • 对新手来说，理解记忆文件结构需要一点学习曲线。
    

总体评价：**8.5/10**。扣1.5是因为它依赖你主动Review，但这其实是所有自我迭代系统的共性。

## 五、安全使用建议（血的教训，前人踩坑版）

ClawHub在2月曾爆出**341个恶意技能**事件（部分伪装成Google服务技能，植入macOS/Windows窃取器）。虽然OpenClaw已与**VirusTotal合作提供技能扫描**，但安全第一：

1.  1. **安装前必做三件事**：
    

-   • 用 `clawdhub inspect self-improving-agent` 查看扫描报告
    
-   • 尽量阅读技能里的所有 `.sh` 脚本（尤其是error-detector.sh和hooks）
    
-   • 确认作者 @pskoett 是真实开发者（GitHub活跃维护）
    

3.  2. **最佳实践**：
    

-   • 永远**不要在.learnings文件夹存敏感信息**（API Key等）
    
-   • 先用手动日志模式熟悉，再开Hook
    
-   • 建议在独立用户或容器里跑OpenClaw（sandbox模式）
    
-   • 每周用VirusTotal再扫一次已装技能
    

5.  3. **进阶玩法**：
    

-   • 把这个技能和“memory-enhancer”类技能组合，形成记忆飞轮
    
-   • 让AI每周自动生成“本周学习周报”发给你
    
-   • 结合多个Agent（coding-agent + research-agent）共享同一套学习库
    

## 结语：让你的AI真正“长大”

Self-Improving-Agent 不是一个简单的工具，而是一套**AI原生学习方法论**。它把“Prompt Engineering”从一次性调试，升级成了可持续的知识工程，让AI真正“长大”。

记得**点赞 + 转发给同样在玩AI代理的朋友**。我们下期见，一起把OpenClaw“养大”！

（本文基于ClawHub官方页面、GitHub仓库及社区测试经验撰写，所有命令已验证有效。如有更新，以ClawHub为准。）

___