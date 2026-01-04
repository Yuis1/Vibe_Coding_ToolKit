# 第一课：搭建氛围编程运行环境

> 本课目标：配置好编程所需的系统环境，为AI辅助编程做好准备

## 一、选择操作系统环境

### 🍎 macOS 用户

**无需额外设置**，直接进入下一节。

**注意**：安装软件时请注意芯片类型
- **M系列芯片**（M1/M2/M3/M4）：选择 ARM 版本
- **Intel芯片**（2020年以前机型）：选择 Intel 版本

### 🪟 Windows + WSL（推荐）

WSL（Windows Subsystem for Linux）让你在Windows上运行Linux环境，是AI编程的最佳选择。

**⚠️ 重要提醒**：
- 所有编程工具（Node.js、Python、Claude Code 等）都必须在 **WSL（Ubuntu 终端）内**安装
- 不要在 Windows 的 PowerShell 或命令提示符中安装这些工具
- VSCode 在 Windows 上安装，但通过远程连接到 WSL 环境进行开发

#### 安装 WSL2

**视频教程**：[WSL2安装教程 - B站](https://www.bilibili.com/video/BV1Pw4m1Z7xw/)

**文字教程**：

**第一步：以管理员身份打开 PowerShell**

1. 按 **Win 键** 打开开始菜单
2. 输入 **PowerShell**
3. 在搜索结果中，右键点击 **"Windows PowerShell"**
4. 选择 **"以管理员身份运行"**
5. 在弹出的确认窗口中点击 **"是"**

**第二步：运行安装命令**

1. 在打开的 PowerShell 窗口中（蓝色背景），输入以下命令（可以直接复制粘贴）：
   ```powershell
   wsl --install
   ```
2. 按 **Enter 键** 执行命令
3. 等待命令执行完成（可能需要几分钟）

**第三步：重启电脑**

1. 关闭所有打开的程序和文件
2. 点击开始菜单，选择 **"电源"** → **"重启"**
3. 重启完成后，系统会自动弹出 Ubuntu 终端窗口
4. 第一次打开 Ubuntu 时，会要求你设置用户名和密码
   - 输入用户名（例如：yourname），按 Enter
   - 输入密码（输入时不会显示字符，这是正常的），按 Enter
   - 再次输入密码确认，按 Enter

**详细图文教程**：
- [微软官方WSL安装指南](https://learn.microsoft.com/zh-cn/windows/wsl/install)
- [Windows11 WSL2详细过程](https://www.cnblogs.com/xiao987334176/p/18864140)

#### WSL 资源分配设置（重要）

为WSL分配足够的内存和CPU，避免运行大型项目时卡顿。

**使用系统自带设置界面（推荐）**

Windows 11 系统自带的 WSL 设置界面，简单易用。

1. 按 **Win 键** 打开开始菜单
2. 在搜索框中输入 **"WSL"** 或 **"适用于 Linux 的子系统"**
3. 在搜索结果中，点击 **"WSL 设置"** 或 **"适用于 Linux 的子系统设置"**
4. 会打开一个设置窗口，在其中可以调整：
   - **内存分配（Memory）**：建议至少 8GB，如果电脑有 16GB 或更多，可以设置为 12-16GB
   - **CPU 核心数（Processors）**：建议至少 4 核，如果电脑 CPU 核心数较多，可以设置为 6-8 核
   - **交换空间大小（Swap）**：建议设置为 2-4GB
   - 其他高级选项可以保持默认

5. 调整完设置后，关闭窗口即可（系统会自动保存）

**重要提示**：
- 如果调整后没有立即生效，可能需要重启 WSL
- 重启 WSL 的方法：在 PowerShell 中运行 `wsl --shutdown`，然后重新打开 Ubuntu

### 🪟 Windows 纯用户（不推荐）

如果不想安装 WSL，必须安装 **Git Bash**。

**下载地址**：[Git 官网](https://git-scm.com/downloads)
- 下载 Windows 版本
- 安装时选择默认选项即可

⚠️ **重要警告**：
尽量避免在 Windows 命令提示符（cmd）、PowerShell 下运行AI编程工具。AI工具对 Windows 命令行指令不太熟悉，可能造成误操作，甚至误删除文件！

---

## 二、配置科学上网

> 本节不做深入展开，仅提供基础配置指南

### 推荐工具

- **v2ray 系列**：功能强大，配置灵活。图形化的版本有：v2rayn、v2rayu
- **clash 系列**：界面友好，适合新手

❌ **避免使用**：仅适用于浏览器内的代理插件（因为终端命令行不走浏览器代理）

### 设置本机 HTTP 代理端口

将代理软件的 HTTP 代理端口设置为 **1087**（可根据实际调整）

### 让终端流量也走代理

#### Windows + WSL 用户

1. 进入 WSL（Ubuntu终端）
2. 编辑配置文件：
   ```bash
   nano ~/.bashrc
   ```
3. 滚动到文件末尾，粘贴以下内容：
   ```bash
   # 获取 Windows 主机 IP（WSL2 的默认网关）
   host_ip=$(ip route | grep default | awk '{print $3}')

   # 设置代理函数
   proxy() {
     if [ "$1" = "on" ]; then
       export http_proxy="http://$host_ip:1087"
       export https_proxy="http://$host_ip:1087"
       export HTTP_PROXY="http://$host_ip:1087"
       export HTTPS_PROXY="http://$host_ip:1087"
       echo "✅ 代理已开启"
     elif [ "$1" = "off" ]; then
       unset http_proxy
       unset https_proxy
       unset HTTP_PROXY
       unset HTTPS_PROXY
       echo "❌ 代理已关闭"
     else
       echo "使用方法: proxy [on|off]"
     fi
   }
   ```
4. 保存并退出：按 `Ctrl + O` 保存，按 `Enter` 确认，按 `Ctrl + X` 退出
5. 使配置生效：
   ```bash
   source ~/.bashrc
   ```
6. **测试并使用代理功能**（在终端中执行）：

   **开启代理**（在终端中输入以下命令并按回车）：
   ```bash
   proxy on
   ```
   终端会显示：✅ 代理已开启

   **重要说明**：
   - 这个命令只对**当前这一个终端窗口**生效
   - 如果打开新的终端窗口，需要重新运行 `proxy on`
   - 关闭终端窗口后，代理设置会自动失效（不需要手动关闭）

   **关闭代理**（如果需要暂时关闭代理）：
   ```bash
   proxy off
   ```
   终端会显示：❌ 代理已关闭

   **验证代理是否生效**：
   ```bash
   # 在终端中执行以下命令，测试能否访问 Google
   curl -I https://www.google.com
   ```
   如果返回类似 `HTTP/2 200` 的内容，说明代理配置成功！

#### macOS 用户

1. 打开终端（Terminal）
2. 编辑配置文件：
   ```bash
   nano ~/.zshrc
   ```
3. 滚动到文件末尾，粘贴以下内容：
   ```bash
   # 设置代理函数（假设你的代理端口是 1087）
   proxy() {
     if [ "$1" = "on" ]; then
       export http_proxy="http://127.0.0.1:1087"
       export https_proxy="http://127.0.0.1:1087"
       export HTTP_PROXY="http://127.0.0.1:1087"
       export HTTPS_PROXY="http://127.0.0.1:1087"
       echo "✅ 代理已开启"
     elif [ "$1" = "off" ]; then
       unset http_proxy
       unset https_proxy
       unset HTTP_PROXY
       unset HTTPS_PROXY
       echo "❌ 代理已关闭"
     else
       echo "使用方法: proxy [on|off]"
     fi
   }
   ```
4. 保存并退出：按 `Ctrl + O` 保存，按 `Enter` 确认，按 `Ctrl + X` 退出
5. 使配置生效（在终端中输入以下命令并按回车）：
   ```bash
   source ~/.zshrc
   ```

6. **测试并使用代理功能**（在终端中执行）：

   **开启代理**（在终端中输入以下命令并按回车）：
   ```bash
   proxy on
   ```
   终端会显示：✅ 代理已开启

   **重要说明**：
   - 这个命令只对**当前这一个终端窗口**生效
   - 如果打开新的终端窗口，需要重新运行 `proxy on`
   - 关闭终端窗口后，代理设置会自动失效（不需要手动关闭）

   **关闭代理**（如果需要暂时关闭代理）：
   ```bash
   proxy off
   ```
   终端会显示：❌ 代理已关闭

   **验证代理是否生效**：
   ```bash
   # 在终端中执行以下命令，测试能否访问 Google
   curl -I https://www.google.com
   ```
   如果返回类似 `HTTP/2 200` 的内容，说明代理配置成功！

---

## 三、安装 Node.js 运行环境

Node.js 是运行 AI 编程工具的基础环境。

### 下载 Node.js

**下载地址**：🔗 [Node.js 中文网下载页](https://nodejs.cn/download/)

**选择版本**：
- **推荐**：下载 **LTS 版本**（长期支持版本，更稳定）
- 页面上会显示两个版本，选择左边带有 **LTS** 标签的版本

### 安装 Node.js

**⚠️ Windows + WSL 用户注意**：
请在 **WSL (Ubuntu 终端)** 中按下面的 "Linux (WSL) 用户" 说明安装，不要在 Windows 中安装！

**macOS 用户**：

1. 找到下载的 `.pkg` 安装文件
2. 双击运行安装程序
3. 在安装向导中，一直点击 **"继续"** 或 **"安装"**（使用默认设置）
4. 输入系统密码（安装需要管理员权限）
5. 等待安装完成，关闭安装窗口

**Linux (WSL) 用户**：

**⚠️ 重要**：Windows + WSL 用户，以下命令必须在 **Ubuntu 终端**（WSL）中执行，不要在 Windows PowerShell 中执行！

通过命令行安装更方便。打开 **Ubuntu 终端**，在终端中执行：

```bash
# 如果有代理，先开启
proxy on

# 使用 NodeSource 仓库安装 Node.js LTS 版本
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# 验证安装
node -v
npm -v
```

### 验证 Node.js 安装

打开一个**新的终端窗口**（重要！必须打开新窗口才能使环境变量生效），在终端中执行以下命令：

**Windows + WSL 用户**：打开 **Ubuntu 终端**（不是 PowerShell！）
**macOS 用户**：打开 Terminal（终端）

在终端中输入（按顺序执行，每行输入后按 Enter）：

```bash
node -v
npm -v
```

如果显示版本号（例如：`v20.10.0` 和 `10.2.3`），说明 Node.js 安装成功！

如果提示"命令找不到"，请尝试：
1. 关闭终端，重新打开一个新的终端窗口
2. 或者重启电脑

### 安装 pnpm（推荐包管理器）

pnpm 比 npm 更快速、更节省磁盘空间，是新一代的包管理工具。

**⚠️ Windows + WSL 用户注意**：以下命令必须在 **Ubuntu 终端**中执行！

**在终端中执行以下命令**（打开终端，依次输入）：

```bash
# 如果你有代理，先开启（在终端中输入）
proxy on

# 全局安装 pnpm（在终端中输入）
npm install -g pnpm
```

按 Enter 执行后，会看到安装进度条，等待安装完成（可能需要 1-2 分钟）。

**验证 pnpm 安装**（在终端中输入）：

```bash
pnpm -v
```

如果显示版本号（例如：`8.15.0`），说明 pnpm 安装成功！

**重要提示**：
- **Windows + WSL 用户**：以上命令必须在 **Ubuntu 终端**中执行！
- `-g` 参数表示"全局安装"，这样在任何目录下都可以使用 pnpm
- 如果安装过程中提示权限错误（macOS/Linux），在命令前加 `sudo`，即：`sudo npm install -g pnpm`

---

## 四、安装 AI 编程工具

本节介绍如何安装 AI 编程助手工具。这些工具会帮助你更高效地编写代码。

### Claude Code（推荐）

Claude Code 是 Anthropic 官方的 AI 编程工具，功能强大，适合各种编程语言。

**官方安装指南**：[Claude Code Setup](https://docs.anthropic.com/en/docs/claude-code/setup#install-and-authenticate)

**安装步骤**（在终端中执行）：

**前提条件**：确保已经安装了 Node.js（第三节已完成）

**⚠️ Windows + WSL 用户注意**：以下所有步骤必须在 **Ubuntu 终端**（WSL）中执行！

1. 打开终端
   - **Windows + WSL 用户**：打开 **Ubuntu 终端**（不是 PowerShell！）
   - **macOS 用户**：打开 Terminal（终端）

2. 如果有代理，先开启（在终端中输入）：
   ```bash
   proxy on
   ```

3. 安装 Claude Code（在终端中输入以下命令）：
   ```bash
   npm install -g @anthropic-ai/claude-code
   ```

   按 Enter 执行后，会看到安装进度，等待安装完成（可能需要 1-2 分钟）。

4. 验证安装（在终端中输入）：
   ```bash
   claude --version
   ```

   如果显示版本号，说明安装成功！

5. 初始化配置（在终端中输入）：
   ```bash
   claude
   ```

   首次运行会要求你：
   - 登录 Anthropic 账号（需要注册）
   - 输入 API Key（如果有的话）

按照屏幕提示完成配置即可。

### Google Gemini CLI（备选）

Google 的 AI 编程工具，如果你使用 Google 的服务，可以安装这个工具。

**官方安装指南**：[Gemini CLI](https://google-gemini.github.io/gemini-cli/)

安装方法：
```bash
npm install -g @google/gemini-cli
```

### 其他工具

- **Cursor**：基于 AI 的代码编辑器，集成了多个 AI 模型
- **GitHub Copilot**：GitHub 推出的 AI 编程助手
- **Codex**：OpenAI 的代码生成工具

**提示**：刚开始学习时，建议先使用 Claude Code 或 Cursor，不需要安装所有工具。

---

## 五、配置 Python 运行环境

Python 是最流行的编程语言之一，许多 AI 工具和数据处理工具都依赖 Python 环境。

### 安装 Miniconda

Miniconda 是 Anaconda 的精简版，只包含最核心的 Python 和 conda 包管理器，体积小、安装快。

**下载地址**：
- [Miniconda 官网](https://docs.conda.io/en/latest/miniconda.html)
- [Anaconda 中文文档 - 安装Miniconda](https://docs.anaconda.net.cn/miniconda/install/)

#### 安装步骤

**⚠️ Windows + WSL 用户注意**：以下所有步骤必须在 **Ubuntu 终端**（WSL）中执行，不要在 Windows 中安装 Python！

**第一步：下载安装脚本**

打开终端，根据你的系统选择对应的命令（在终端中输入并按 Enter）：

**Windows + WSL 用户**：打开 **Ubuntu 终端**！

**macOS Intel 芯片用户**（2020年以前的机型）：
```bash
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
```

**macOS M 系列芯片用户**（M1/M2/M3/M4）：
```bash
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh
```

**WSL (Linux) 用户**：
```bash
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
```

按 Enter 后，会看到下载进度条，等待下载完成（文件约 100MB）。

**第二步：运行安装脚本**

下载完成后，在终端中输入（按 Enter）：

```bash
bash Miniconda3-latest-*.sh
```

**第三步：按提示完成安装**

安装过程中会看到许可协议和一系列提示：

1. 按 **Enter 键** 查看许可协议（会显示很多英文文字）
2. 按 **空格键** 快速滚动到协议末尾
3. 输入 **yes** 并按 Enter，同意许可协议
4. 按确认默认安装位置（直接按 Enter 即可）
5. 等待安装完成（显示进度条，可能需要 1-2 分钟）
6. 最后一步询问是否初始化 Miniconda，输入 **yes** 并按 Enter

**第四步：重启终端**

安装完成后，**关闭终端窗口，重新打开一个新的终端窗口**，使配置生效。

#### 让终端环境自动加载 conda

安装 Miniconda 后，通常 conda 会自动配置。如果重新打开终端后，命令行前面没有显示 `(base)`，说明需要手动初始化。

在终端中输入：

```bash
# macOS 用户
conda init zsh

# WSL 用户
conda init bash
```

按 Enter 执行后，会显示初始化信息。

然后**关闭终端，重新打开**，应该能看到命令行前面有 `(base)` 标志。

**验证安装**（在终端中输入）：

```bash
conda --version
```

如果显示版本号（例如：`conda 24.1.0`），说明 Miniconda 安装成功！

**配置教程参考**：
- [WSL安装Miniconda教程（详细版）](https://blog.csdn.net/qq_19309473/article/details/143276705)
- [macOS系统下Miniconda安装与环境配置全流程指南](https://comate.baidu.com/zh/page/pz393gp8wvk)

### 创建 Python 3.13 环境

Conda 允许你创建多个独立的 Python 环境，不同项目可以使用不同的 Python 版本，互不干扰。

**创建 Python 3.13 环境**（在终端中执行）：

**⚠️ Windows + WSL 用户注意**：以下所有步骤必须在 **Ubuntu 终端**中执行！

1. 打开终端
   - **Windows + WSL 用户**：打开 **Ubuntu 终端**
   - **macOS 用户**：打开 Terminal（终端）

2. 如果有代理，先开启（在终端中输入）：
   ```bash
   proxy on
   ```

3. 创建 Python 3.13 环境（在终端中输入）：
   ```bash
   conda create -n py313 python=3.13 -y
   ```

   按 Enter 执行后，会显示要安装的包列表和下载进度，等待完成（可能需要 2-5 分钟）。

4. 激活刚创建的环境（在终端中输入）：
   ```bash
   conda activate py313
   ```

   激活成功后，命令行前面的 `(base)` 会变成 `(py313)`。

5. 验证 Python 版本（在终端中输入）：
   ```bash
   python --version
   ```

   如果显示 `Python 3.13.x`，说明环境创建成功！

**常用 conda 环境管理命令**：

```bash
# 查看所有环境
conda env list

# 激活环境（每次使用 Python 前都要激活）
conda activate py313

# 退出当前环境（回到 base 环境）
conda deactivate

# 删除环境（如果不需要了）
conda remove -n py313 --all
```

**重要提示**：
- 每次需要使用 Python 3.13 时，都要先运行 `conda activate py313` 激活环境
- 如果关闭终端再打开，需要重新激活环境
- 建议为每个项目创建独立的 Python 环境，避免包版本冲突

---

## 六、安装 VSCode（IDE）

VSCode（Visual Studio Code）是微软开发的免费代码编辑器，功能强大、界面友好，是目前最流行的编程工具。

### 下载 VSCode

**官方下载地址**：[VSCode 官网](https://code.visualstudio.com/）

**下载步骤**：

1. 打开浏览器，访问上面的官网链接
2. 页面会自动检测你的操作系统，显示对应的下载按钮
3. 点击 **"Download"** 按钮（通常是大大的蓝色按钮）

**手动选择系统**（如果自动检测不正确）：
- **Windows 用户**：点击 **"Windows"** 标签，下载 **"User Installer"** 版本（用户级安装，不需要管理员权限）
- **macOS 用户**：点击 **"macOS"** 标签
  - **Intel 芯片**：下载 **"Universal"** 或 **"Intel Chip"** 版本
  - **M 系列芯片**（M1/M2/M3/M4）：下载 **"Apple Silicon"** 版本
  - **推荐**：下载 **"Universal"** 通用版本，兼容性最好
- **Linux (WSL) 用户**：点击 **"Linux"** 标签，下载 **.deb** 包（Debian/Ubuntu）

**安装教程参考**：
- [2025超详细的VSCode下载和安装教程](https://blog.csdn.net/logic1001/article/details/147259836)
- [Visual Studio Code下载与安装教程](https://cloud.tencent.com/developer/article/2573501)

### 安装 VSCode

**Windows 用户**：

1. 找到下载的安装文件（通常在"下载"文件夹，文件名类似 `VSCodeUserSetup-x64.exe`）
2. 双击运行安装程序
3. 在安装向导中：
   - 点击 **"我同意此协议"**，然后点击 **"下一步"**
   - 选择安装位置（可以使用默认位置），点击 **"下一步"**
   - 勾选你想要的选项（推荐全部勾选）：
     - ✓ 创建桌面快捷方式
     - ✓ 将"通过 Code 打开"操作添加到 Windows 资源管理器文件上下文菜单
     - ✓ 将"通过 Code 打开"操作添加到 Windows 资源管理器目录上下文菜单
     - ✓ 将 Code 注册为受支持的文件类型的编辑器
   - 点击 **"下一步"**
   - 点击 **"安装"**
4. 等待安装完成（可能需要 1 分钟）
5. 点击 **"完成"**，VSCode 会自动启动

**macOS 用户**：

1. 找到下载的文件（通常在"下载"文件夹，文件名类似 `VSCode-darwin-universal.zip`）
2. 双击解压文件（如果自动解压了，跳过此步）
3. 解压后会得到一个 **"Visual Studio Code"** 应用程序
4. 将应用程序拖到 **"应用程序"** 文件夹中
5. 在"启动台"或"应用程序"文件夹中找到 VSCode，双击启动
6. 首次启动时，macOS 可能会提示"来自身份不明开发者"，右键点击 VSCode 图标，选择 **"打开"**，然后在弹出对话框中点击 **"打开"** 即可

**Linux (WSL) 用户**：

1. 找到下载的 `.deb` 文件（通常在"下载"文件夹）
2. 右键点击文件，选择 **"在终端中打开"**（或直接打开终端，进入下载目录）
3. 在终端中输入以下命令安装（按 Enter）：
   ```bash
   sudo apt install ./code_*.deb
   ```
4. 输入系统密码（输入时不会显示字符，这是正常的）
5. 等待安装完成
6. 在 WSL 中输入 `code` 即可启动 VSCode

### 安装必备插件

VSCode 的强大功能来自于插件扩展。以下是编程必备的插件。

**打开插件扩展面板**：

1. 启动 VSCode
2. 点击左侧边栏的 **扩展图标**（四个方块的图标，在最左侧）
   或者按快捷键：**Ctrl+Shift+X**（macOS: **Cmd+Shift+X**）
3. 在顶部的搜索框中输入插件名称搜索

**必装插件 1：Claude Code**

1. 在搜索框中输入：**Claude Code**
2. 找到由 **Anthropic** 开发的插件（通常是第一个结果）
3. 点击 **"安装"** 按钮
4. 等待安装完成（按钮会变成"已安装"）

插件地址：[Claude Code - VSCode 插件市场](https://marketplace.visualstudio.com/items?itemName=anthropic.claude-code)

**推荐插件 2：Python**

1. 在搜索框中输入：**Python**
2. 找到由 **Microsoft** 开发的 Python 插件（通常是第一个结果）
3. 点击 **"安装"** 按钮

这个插件提供了 Python 代码高亮、智能提示、调试等功能。

**可选插件 3：中文语言包**

如果你不习惯英文界面，可以安装中文语言包：

1. 在搜索框中输入：**Chinese**
2. 找到 **"Chinese (Simplified) Language Pack"**（简体中文语言包）
3. 点击 **"安装"** 按钮
4. 安装完成后，VSCode 会提示你重启，点击重启即可切换为中文界面

### Windows + WSL 用户：在 VSCode 中连接到 WSL

**⚠️ 重要**：如果你是 Windows + WSL 用户，安装完 VSCode 后，需要配置 VSCode 连接到 WSL 环境，才能在 WSL 中进行开发。

**第一步：安装 WSL 插件**

1. 启动 VSCode
2. 点击左侧边栏的 **扩展图标**（四个方块的图标）
3. 在搜索框中输入：**WSL**
4. 找到由 **Microsoft** 开发的插件（名称通常是 "WSL"）
5. 点击 **"安装"** 按钮

**第二步：连接到 WSL**

方法一：通过远程资源管理器
1. 在 VSCode 左侧边栏，找到 **远程资源管理器图标**（显示器形状的图标，在扩展图标旁边）
2. 点击后，在 "WSL Targets" 下会显示你的 WSL 发行版（例如 "Ubuntu"）
3. 点击 **Ubuntu** 右侧的连接图标（小文件夹形状）
4. 会打开一个新的 VSCode 窗口，窗口左下角会显示 "WSL: Ubuntu"，说明已成功连接到 WSL

方法二：通过命令面板
1. 在 VSCode 中按 **Ctrl+Shift+P** 打开命令面板
2. 输入：**WSL: Connect to WSL**
3. 按Enter 执行
4. 选择你的 WSL 发行版（通常是 Ubuntu）
5. 会打开一个新的 VSCode 窗口，左下角显示 "WSSL: Ubuntu"

**第三步：在 WSL 中创建第一个项目**

连接成功后，你可以在 VSCode 中创建项目：

1. 在已连接 WSL 的 VSCode 窗口中，按 **Ctrl+Shift+P** 打开命令面板
2. 输入：**File: Save File As...**
3. 选择一个目录保存文件（例如：`~/projects/my-first-project/`）
4. 创建一个测试文件，例如 `hello.py`：
   ```python
   print("Hello from WSL!")
   ```
5. 按 **Ctrl+S** 保存
6. 在 VSCode 中打开终端（按 **Ctrl+`** 或菜单：终端 → 新建终端）
7. 终端会自动在 WSL 环境中打开（命令行前面会显示 `(base)` 或其他 conda 环境标志）
8. 运行程序：
   ```bash
   python hello.py
   ```
9. 如果输出 "Hello from WSL!"，说明一切正常！

**重要提示**：
- 以后每次开发时，都要通过连接到 WSL 的 VSCode 窗口进行
- 如果左下角显示 "WSL: Ubuntu"，说明当前已连接到 WSL
- 如果左下角没有显示 WSL 标志，说明你在 Windows 环境中，需要重新连接

### 在 VSCode 中使用 Claude

安装好 Claude Code 插件后，你就可以在 VSCode 中直接使用 AI 编程助手了。

**启动 Claude Code**：

方法一：通过侧边栏
1. 打开 VSCode
2. 在左侧边栏找到 **Claude 图标**（一个对话气泡形状的图标）
3. 点击图标，会打开 Claude Code 面板

方法二：通过命令面板
1. 在 VSCode 中按 **Ctrl+Shift+P**（macOS: **Cmd+Shift+P**）打开命令面板
2. 输入：**Claude Code: Start**
3. 按Enter 执行

**首次使用配置**：

第一次使用 Claude Code 时，需要登录 Anthropic 账号：

1. Claude Code 会打开一个浏览器窗口
2. 如果没有账号，点击 **"Sign up"** 注册（需要邮箱）
3. 如果已有账号，输入邮箱和密码登录
4. 登录成功后，浏览器会显示一个授权码
5. 复制授权码，回到 VSCode
6. 粘贴授权码，按 Enter 确认

配置完成后，你就可以在 VSCode 中直接和 AI 对话，让它帮你写代码、解释代码、调试程序了！

**测试 Claude Code**：

1. 在 VSCode 中打开 Claude Code 面板（点击左侧 Claude 图标）
2. 在输入框中输入：**"你好，请帮我写一个 Python 的 Hello World 程序"**
3. 按 Enter 发送
4. Claude 会为你生成代码并显示在面板中

---

## 七、[备选] Trae IDE

Trae 是一款国产 AI 编程工具，适合新手。

**官网**：[https://www.trae.cn/](https://www.trae.cn/)

**特点**：
- 内置中文支持
- 集成多个 AI 模型
- 对新手更友好

---

## 环境验证清单

✅ **完成以下检查，确保环境配置成功**：

### Windows 用户
- [ ] WSL 已安装并正常运行
- [ ] WSL 资源分配已配置
- [ ] 终端代理设置完成（如需）
- [ ] Node.js 已在 WSL 中安装（在 Ubuntu 终端运行 `node -v` 显示版本）
- [ ] pnpm 已在 WSL 中安装（在 Ubuntu 终端运行 `pnpm -v` 显示版本）
- [ ] Miniconda 已在 WSL 中安装（在 Ubuntu 终端运行 `conda --version` 显示版本）
- [ ] Python 3.13 环境已在 WSL 中创建（激活环境后 `python --version` 显示 3.13.x）
- [ ] VSCode 已在 Windows 中安装并可正常运行
- [ ] VSCode WSL 插件已安装
- [ ] VSCode 可以成功连接到 WSL（左下角显示 "WSL: Ubuntu"）
- [ ] Claude Code 插件已安装

### macOS 用户
- [ ] 终端代理设置完成（如需）
- [ ] Node.js 已安装（`node -v` 显示版本）
- [ ] pnpm 已安装（`pnpm -v` 显示版本）
- [ ] Miniconda 已安装（`conda --version` 显示版本）
- [ ] Python 3.13 环境已创建（`python --version` 显示 3.13.x）
- [ ] VSCode 已安装并可正常运行
- [ ] Claude Code 插件已安装

---

## 常见问题（FAQ）

### Q1: WSL 安装后无法启动？
**A**: 确保 BIOS 中已开启虚拟化技术（VT-x），并在 Windows 功能中勾选"适用于 Linux 的 Windows 子系统"和"虚拟机平台"。

### Q2: conda 命令找不到？
**A**: 运行 `conda init` 并重启终端。如果仍不行，手动将 Miniconda 添加到系统 PATH。

### Q3: 代理设置后仍无法访问？
**A**:
1. 确认代理软件正在运行
2. 检查端口号是否正确（默认1087）
3. Windows WSL 用户确保 `host_ip` 变量正确获取（运行 `echo $host_ip` 检查）

### Q4: Node.js 安装后命令不可用？
**A**: 重启终端或电脑。如果仍不行，检查环境变量 PATH 中是否包含 Node.js 路径。

### Q5: VSCode 打开终端后不是 bash/zsh？
**A**: 在 VSCode 终端下拉菜单中选择默认 Shell 为 bash 或 zsh。

---

## 下一步

环境配置完成后，你将进入：

**第二课：用AI助手写第一个程序** 🚀

---

## 参考资源

- [WSL 微软官方文档](https://learn.microsoft.com/zh-cn/windows/wsl/)
- [Node.js 中文网](https://nodejs.cn/)
- [Anaconda 中文文档](https://docs.anaconda.net.cn/)
- [VSCode 官方文档](https://code.visualstudio.com/docs)
- [Claude Code 官方文档](https://docs.anthropic.com/en/docs/claude-code)

---

**💡 温馨提示**：

本课内容较多，如果某个步骤卡住，可以：
1. 查看提供的参考教程链接
2. 在搜索引擎中搜索具体错误信息
3. 跳过该步骤，先完成其他配置

环境配置是一次性的，完成后可以长期使用。耐心一点，你很快就能开始AI编程之旅！
