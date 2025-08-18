## MCP来源
### [npmjs.com](https://www.npmjs.com/)
这是最靠谱的来源，因为它是npm包的发行渠道。
详情页也会有如何本地部署的介绍。
可惜没有针对MCP的排名和推荐。

### [MCP.SO](http://mcp.so/)
访问速度慢，有错误和滞后信息，期待升级。

### [smithery.ai](https://smithery.ai/)
没介绍怎么本地安装，npx指向的都是smithery自己的服务器。

### Anthropic 推荐的 MCP Server
https://github.com/modelcontextprotocol/servers/  
不推荐。很多试验性的都过期下架了。


## 推荐的MCP Server

### Claude Code 安装这些MCP的命令

```
claude mcp add --transport http rube "https://rube.composio.dev/mcp"
claude mcp add filesystem -- npx -y @modelcontextprotocol/server-filesystem
claude mcp add git-mcp-server --env MCP_LOG_LEVEL="info" --env GIT_SIGN_COMMITS="false" -- npx -y @cyanheads/git-mcp-server
claude mcp add memory --env MEMORY_STORAGE_PATH="~/dev/data/memory.json" -- npx -y @modelcontextprotocol/server-memory
claude mcp add brave-search --env BRAVE_API_KEY="your_brave_api_key" -- npx -y @modelcontextprotocol/server-brave-search 
claude mcp add context7 -- npx -y @upstash/context7-mcp
claude mcp add sequential-thinking -- npx -y @modelcontextprotocol/server-sequential-thinking
claude mcp add "Framelink-Figma-MCP" -- npx -y figma-developer-mcp --figma-api-key=your_figma_key --stdio
```

### Google Cli 安装 MCP
目前暂不支持通过 gemini mcp add 添加，只能在 ~/.gemini/settings.json 里配置，可以直接拷贝Claude Code的MCP配置。


## MCP Prompt
### Figma
Create a Figma design clone using the given Figma design as a reference: [FIGMA_URL]. Use Rube MCP's Figma toolkit for this task.
Try to make it as close as possible. Use Next.js with TypeScript. Include:
- Responsive design
- Proper component structure
- Styled-components or CSS modules
- Interactive elements
