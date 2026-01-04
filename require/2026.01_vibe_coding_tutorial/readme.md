## 需求背景
帮我在 tutorial 目录下，创建氛围编程小白入门教程。
教学对象为会基础电脑操作，但是完全不懂编程的普通人。

## 教学大纲
### 第一课：搭建氛围编程运行环境
#### 操作系统
- MACOS：基本无需设置。但是要注意安装软件时，M系列芯片选ARM类型，2020以前的机型都选Intel类型。
- Windows + WSL：推荐。视同linux环境。安装Debian、Ubuntu发行版。安装WSL教程的链接...   WSL分配资源设置。
- Windows：要求安装Git Bash。下载地址：...

注意：尽量避免在Windows命令提示符、PowerShell下运行AI编程工具，工具对Windows系统命令行指令不太熟悉，可能会造成误删除全盘文件！

#### 科学上网（不做展开）
- v2ray系列
- clash系列
- 避免使用：仅适用于浏览器内的代理插件。
- 设置本机http代理端口到1087

##### 让终端流量也走代理
对于Windows
进入WSL，nano ~/.bashrc
粘贴以下内容到末尾：
```
# 获取 Windows 主机 IP（WSL2 的默认网关）
host_ip=$(ip route | grep default | awk '{print $3}')

# 设置环境变量
proxy() {
  if [ "$1" = "on" ]; then
    export http_proxy="http://$host_ip:1087"
    export https_proxy="http://$host_ip:1087"
    export HTTP_PROXY="http://$host_ip:1087"
    export HTTPS_PROXY="http://$host_ip:1087"
    echo "Proxy is now ON."
  elif [ "$1" = "off" ]; then
    unset http_proxy
    unset https_proxy
    unset HTTP_PROXY
    unset HTTPS_PROXY
    echo "Proxy is now OFF."
  else
    echo "Usage: proxy [on|off]"
  fi
}
```

对于MACOS：
打开终端，nano ~/.zshrc
粘贴以下内容到末尾
```
请帮我补充
```


#### AI编程工具
准备Nodejs运行环境
- Nodejs下载地址： https://nodejs.cn/download/
- pnpm安装：

安装
- [Claude Code 安装的官方指南](https://docs.anthropic.com/en/docs/claude-code/setup#install-and-authenticate)
- [Google Cli 安装的官方指南](https://google-gemini.github.io/gemini-cli/)
- Codex

#### Python运行环境
- Miniconda安装：MACOS、WSL
- 让终端环境自动加载conda：`conda init` 
- 设置Python环境（3.13版本）

#### IDE
#### VSCode安装
下载地址：应用商店，或者 ...
安装插件：
- Claude Code https://marketplace.visualstudio.com/items?itemName=anthropic.claude-code

#### [备选]Trae 
https://www.trae.cn/

#### 在IDE中启动Claude

### 第二课：AI编程的入门使用
#### 初识Markdown格式



## 编写要求
- 通俗易懂，方便小白入门
- 进行网络搜索最新安装方案