官方Skills示例：https://github.com/anthropics/skills

通过在CC中输入以下命令，会自动安装官方Example Skills。
其中每个Skills组包括了一个或多个Skill。
```
/plugin install document-skills@anthropic-agent-skills
/plugin install example-skills@anthropic-agent-skills
```

Skill 有三种存储位置:
- 个人 Skills存储在 ~/.claude/skills/ 目录,适用于个人工作流程、实验性 Skills 和个人生产力工具
- 项目 Skills存储在项目内的 .claude/skills/ 目录,与团队共享,适用于团队工作流程、项目特定专业知识和共享工具
- 插件 Skills来自 Claude Code 插件,插件安装时自动可用

最有用的元技能：skill-creator