# 化繁为简快速启动MVP
## 最关键的指令
如何把一个 500MB 的Node.js残废代码，变成一个 30KB 的可用代码? 

最关键的就是指定使用 PHP + Vanilla JS + SQLLite + Raw SQL 的远古技术栈。

框架和抽象是给人类用的，不是给机器人用的，它们往往会妨碍 “Vibe Coding”，而不是提供帮助。

在 Spec 或 CLAUDE.md 中加入以下内容：
```Markdown
## Techncial details
* Use a single index.php script for the entire app.
* SQLite for all database functionality.
* No frameworks, just vanilla javascript and css
* No ORMs, use raw SQL
* use a clean minimalist elegant design that's mobile responsive
```

## 观点
1. 要有信念（给足权限）：直接开启 “危险地跳过权限” 模式 (dangerously skip permissions)，哪怕是在生产服务器和主开发机上。他甚至开玩笑说，信息安全部门的同学看到这儿可以退出了，不然心脏受不了。哈哈，够野！
2. 给足输入（上下文拉满）：你给 AI 的输入越多，它的输出就越好。它是个魔法工具，但你得是个沟通大师，不管是通过码几千字的文本文件，还是在交互窗口里狂敲，总之，信息给够。
3. UI 设计能力惊人：作为一个文本模型，Claude Code 在 UI 设计方面的表现好到让人意外。

## 出处
- [Claude Code Is All You Need](https://dwyer.co.za/static/claude-code-is-all-you-need.html)
- [5 行代码，把 500MB 的项目重构成 30KB 精品，他用 Claude Code 迁移生产环境、做 UI 设计，甚至创业…](https://mp.weixin.qq.com/s/_0ckt_47TaJeSmpdzKmx_A?poc_token=HPtro2ijehPzR1iGgUj87gR4Npg0etQPXtbBqlkt)

