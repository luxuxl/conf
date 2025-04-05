## 安装 Command Line Tools

`⌘ + Space` 打开 Spotlight, 输入 Terminal

在终端输入 git 触发 Command Line Tools 安装提示, 选择安装

去冲一杯咖啡耐心等待安装完成

## 安装 ClashX

不要关闭终端, 继续下载 ClashX, 完成后安装

```bash
cd ~/Desktop && curl -OL https://glados.one/tools/ClashX.dmg

```

配置存放在 iCloud 中, 只要在 ClashX 中勾选相关功能会自动改变配置路径

## 安装 Brew

终端开启代理并安装 Homebrew

```bash
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

```

## 拉取仓库配置并执行 defaults 脚本

拉取仓库并链接到 Home 下

```bash
cd ~/Desktop && git clone -b mac https://github.com/luxuxl/config.git
rm -rf ~/.config && ln -s ~/Desktop/config ~/.config

```

执行自动化配置脚本

```bash
sh ~/Desktop/config/defaults/sys_pre.sh

```

## 配置 ssh

默认路径修改

```bash
sudo bash -c 'echo "    IdentityFile ~/.config/ssh/id_rsa" >> /etc/ssh/ssh_config'
sudo bash -c 'echo "    UserKnownHostsFile ~/.config/ssh/known_hosts" >> /etc/ssh/ssh_config'

```

## 安装 Wezterm

```bash
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890
brew install wezterm

```

## 安装 Raycast

```bash
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890
brew install raycast

```

仓库中的 raycast 是软件自动创建存放插件的, 并不包含配置, 所以仍然需要导入

```bash
open ~/Desktop/config/personal.rayconfig

```

## 安装 Karabiner

```bash
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890
brew install karabiner-elements

```

并在设置中将当前配置设为系统默认配置

## 关机并关闭 SIP

在 Raycast 中输入 Shut Down 以关机

长按关机键直至显示 Loading startup options, 然后点击“选项”, 再点击“继续”

cmd shift t 打开终端

输入以下命令关闭 SIP

```bash
csrutil disable

```

## 安装 Yabai

```bash
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890
brew install yabai

```

执行以下命令开启 Yabai 高级功能

```bash
sudo nvram boot-args=-arm64e_preview_abi
echo "$(whoami) ALL=(root) NOPASSWD: sha256:$(shasum -a 256 $(which yabai) | cut -d " " -f 1) $(which yabai) --load-sa" | sudo tee /private/etc/sudoers.d/yabai

```

## 配置 zsh

默认路径修改以及安装插件

```bash
scutil --set HostName " "
sudo sed -i '' '/^#   SHELL_SESSIONS_DISABLE=1/s/^# *//' /private/etc/zshrc_Apple_Terminal
sudo bash -c 'echo "# change path of .zshrc" >> /etc/zshrc'
sudo bash -c 'echo "source ~/.config/zsh/zshrc" >> /etc/zshrc'
sudo bash -c 'echo "# change path of .zsh_history" >> /etc/zshrc'
sudo bash -c 'echo "HISTFILE=~/.config/zsh/zsh-history" >> /etc/zshrc'
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890
brew install powerlevel10k 
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

```

删除所有旧文件

```bash
rm -rf ~/.zsh_sessions ~/.zshrc ~/.zsh_history ~/.zprofile

```

## 配置 Vim

修改路径

```bash
sudo bash -c 'echo "# 用于修改 vim 配置路径" >> /etc/zshrc'
sudo bash -c 'echo "export VIMINIT=\"source ~/.config/vim/vimrc\"">> /etc/zshrc'

```

安装插件管理器

```bash
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890
curl -fLo ~/.config/vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

```

删除旧文件

```bash
rm ~/.viminfo ~/.vimrc

```

## 安装 Rime

```bash
cd ~/Desktop && curl -OL https://github.com/rime/squirrel/releases/download/1.0.3/Squirrel-1.0.3.pkg
# 按下 Tab 补全
open Squirrel

```

链接仓库中的 Rime 配置文件到 Rime 配置路径下

```bash
rm -r ~/Library/Rime && ln -s ~/Desktop/config/Rime ~/Library/Rime

```

## 删除 ABC 输入法

1、先切换到 ABC 输入法

2、转换 plist 文件为 xml 格式并编辑

```bash
plutil -convert xml1 ~/Library/Preferences/com.apple.HIToolbox.plist && code ~/Library/Preferences/com.apple.HIToolbox.plist

```

3、删除 com.apple.HIToolbox.plist 文件中 `AppleEnabledInputSources` 下的其他内容, 仅保留 IM...Non 这条

```xml
<plist version="1.0">
<dict>
	<key>AppleEnabledInputSources</key>
	<array>
		<dict>
			<key>Bundle ID</key>
			<string>com.apple.CharacterPaletteIM</string>
			<key>InputSourceKind</key>
			<string>Non Keyboard Input Method</string>
		</dict>
	</array>
    ...
</plist>
```

4、必须要重启

## 安装 Safari 插件

- Addons/Stay
- Vimlike/Vimari
- xSearch

## 所有软件整理

| 功能 | 名称 | 安装渠道 |
| --- | --- | --- |
| 终端模拟器 | Wezterm | brew |
| 改键软件 | karabiner-element | brew |
| 启动器 | raycast | brew |
| 截图工具 | shottr | brew |
| 编辑器 | VS Code | brew |
| 编辑器 | pycharm-ce | brew |
| 笔记 | obsidian | brew |
| 视频播放器 | iina | brew |
| 媒体播放器 | adrive | brew |
| 浏览器 | google-chrome | brew |
| 窗口管理器 | yabai | brew |
| 文件模糊搜索 | fzy | brew |
| 解压工具 | p7zip | brew |
| 文件修改监视器 | fswatch | brew |
| 目录生成工具 | tree | brew |
| 输入法 | Sogou/Rime | Official Site |
| 同步盘 | nutstore | brew  |
| 网盘 | onedrive | brew |
| 空格预览 md | qlmarkdown | brew |


## 2025.3.22 更新内容

- 测试 macOS13 下 sys_pre 各模块执行是否正常
  - [x] Dock
  - [x] Menubar
  - [x] Trackpad
  - [x] Keyboard
  - [x] 调度中心
  - [x] 通用
  - [x] 声音
  - [x] 截图 
- sys_pre 取消了系统的移动桌面快捷键, 原因: 使用了 yabai
- sys_pre 取消了系统截图功能快捷键
- sys_pre 菜单栏状态改变, 进行调整
  - 18 始终显示
  - 8 不显示
  - 2 按需显示
- sys_pre 新增修饰键的修改, 利用 hidutil 修改
- sys_pre 新增文件 diff.sh, 作用: 查找改动之处, 作者: yannbertrand
- sys_pre 新增修改菜单栏间距
- sys_pre 新增自动隐藏菜单栏
- sys_pre 新增自动隐藏滚动条
- sys_pre 新增禁用所有触发角
- sys_pre 新增允许任何源安装
- 测试 macOS13 下 app_pre 各模块执行是否正常
  - [x] 桌面视图
  - [x] Finder 偏好设置
  - [x] Safari 偏好设置
- app_pre 删除了各个视图大小、间距的调整, 仅保留了信息的显示, 如需要见 deprecated
- app_pre Safari 中允许 Tab 键选中链接
- 以下内容暂时无法通过 defaults 修改
  - 禁用 control thk 等危险操作
  - 禁用自动键盘亮度
 
## 2025.3.26 更新内容

- 将快捷键修改从 sys_pre 移动到 app_pre 中
- app_pre 添加了 cmd+p 的 Unpin 快捷键
- app_pre 添加了 从桌面链接一个文件夹替换掉默认的 Downloads

## 2025.4.4 更新内容

- 将 HostName 改为空白符 (p10k 默认配置对 ps1 不生效)
