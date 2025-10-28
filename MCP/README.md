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
使用 --scope user 来进行全局安装
Claude Code 原生提供了一些工具，但如果不登录 Claude 账号，其中很多工具无法直接使用，比如 web search、fetch 等。

解决方案：
智谱Pro用户及以上可以用：
- 联网检索：使用 web-search-prime，作为默认的在线搜索工具。 claude mcp add -s user zai-mcp-server --env Z_AI_API_KEY=your_api_key -- npx -y "@z_ai/mcp-server"
- 图片 / 视频理解：调用 zai-mcp-server，用于处理多模态内容解析。 claude mcp add -s user -t http web-search-prime https://open.bigmodel.cn/api/mcp/web_search_prime/mcp --header "Authorization: Bearer your_api_key"

- 页面内容获取：如需提取网页正文或源码，请使用 chrome-devtools。
- 浏览器操作：执行页面导航、交互或操作时，优先选择 chrome-devtools；若不可用，可以使用 browsermcp。


比较有用的MCP：

```
claude mcp add --scope user chrome-devtools -- npx -y chrome-devtools-mcp@latest 
claude mcp add --scope user browsermcp -- npx -y @browsermcp/mcp@latest
claude mcp add --scope user context7 -- npx -y @upstash/context7-mcp
claude mcp add --scope user -t http deepwiki https://mcp.deepwiki.com/mcp
claude mcp add --scope user "Framelink-Figma-MCP" -- npx -y figma-developer-mcp --figma-api-key=your_figma_key --stdio
```

一般的MCP：
```
claude mcp add --scope user --transport http rube "https://rube.composio.dev/mcp"
claude mcp add --scope user git-mcp-server --env MCP_LOG_LEVEL="info" --env GIT_SIGN_COMMITS="false" -- npx -y @cyanheads/git-mcp-server
claude mcp add --scope user memory --env MEMORY_STORAGE_PATH="~/dev/dev_memory/memory.json" -- npx -y @modelcontextprotocol/server-memory
claude mcp add --scope user brave-search --env BRAVE_API_KEY="your_brave_api_key" -- npx -y @modelcontextprotocol/server-brave-search 
```

最后记得在claude.md中说明：

MCP 工具使用
- 联网检索，请使用 web-search-prime 做为默认的在线搜索工具。
- 图片/视频理解，请调用 zai-mcp-server，用于处理多模态内容解析。
- 页面内容获取：如需提取网页正文或源码，请使用 chrome-devtools。
- 浏览器操作，执行页面导航、交互或操作时，优先选择 chrome-devtools；若不可用，可以使用 browsermcp。
- 编程文档查询，使用 context7、deepwiki 查询API文档及示例代码，充分理解后再动手，对于 Langchain、LangGraph、LangSmith、DSPY、Copilot-Kit 等还在快速迭代的框架、工具。


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
