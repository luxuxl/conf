#!/bin/bash

# ----------------------- Dock ----------------------
# Dock 大小
defaults write com.apple.dock "tilesize" -int 16

# 关闭放大效果
defaults write com.apple.dock "magnification" -bool false

# 位置改为左侧
defaults write com.apple.dock "orientation" -string 'left'

# 缩小时正常缩放
defaults write com.apple.dock "mineffect" -string 'scale'

# 关闭弹跳打开
defaults write com.apple.dock "launchanim" -bool false

# 自动隐藏 Dock 栏
defaults write com.apple.dock "autohide" -bool true

# 自动隐藏延迟, 设为极大值将永不显示
# defaults write com.apple.dock "autohide-delay" -float 0
defaults write com.apple.dock "autohide-delay" -float 1000

# 打开应用显示指示灯
defaults write com.apple.dock "show-process-indicators" -bool true

# 清空 Dock 栏, 仅显示打开的 App
defaults write com.apple.dock "static-only" -bool true

# 不显示最近使用
defaults write com.apple.dock "show-recents" -bool false

# 禁用所有触发角
defaults write com.apple.dock "wvous-tl-corner" -int 1
defaults write com.apple.dock "wvous-tr-corner" -int 1
defaults write com.apple.dock "wvous-bl-corner" -int 1
defaults write com.apple.dock "wvous-br-corner" -int 1

# set speed for Mission Control (fast)
defaults write com.apple.dock "expose-animation-duration" -float 0.1


# ------------------------ Menu Bar -------------------------
# 自动隐藏菜单栏
defaults write -g "_HIHideMenuBar" -int 1

# 修改菜单栏间距
defaults -currentHost write -globalDomain NSStatusItemSpacing -int 8
defaults -currentHost write -globalDomain NSStatusItemSelectionPadding -int 4

# 18-始终显示 8-始终隐藏 2-按需显示
# 显示 WiFi
defaults -currentHost write com.apple.controlcenter WiFi -int 18

# 显示 蓝牙
defaults -currentHost write com.apple.controlcenter Bluetooth -int 18

# 隐藏 AirDrop
defaults -currentHost write com.apple.controlcenter AirDrop -int 8

# 按需显示 专注模式
defaults -currentHost write com.apple.controlcenter FocusModes -int 2

# 显示 键盘亮度
defaults -currentHost write com.apple.controlcenter KeyboardBrightness -int 18

# 按需显示 屏幕镜像
defaults -currentHost write com.apple.controlcenter ScreenMirroring -int 2

# 按需显示 显示器
defaults -currentHost write com.apple.controlcenter Display -int 2

# 显示 声音
defaults -currentHost write com.apple.controlcenter Sound -int 18

# 按需显示 正在播放
defaults -currentHost write com.apple.controlcenter NowPlaying -int 2

# 隐藏 辅助功能
defaults -currentHost write com.apple.controlcenter AccessibilityShortcuts -int 8

# 显示 电池
defaults -currentHost write com.apple.controlcenter Battery -int 18
defaults -currentHost write com.apple.controlcenter BatteryShowPercentage -int 18

# 隐藏 用户切换
defaults -currentHost write com.apple.controlcenter UserSwitcher -int 8

# 隐藏 Spotlight
defaults -currentHost write com.apple.Spotlight MenuItemHidden -int 1

# 隐藏 Siri
defaults write com.apple.Siri "StatusMenuVisible" -int 0

# 设置时钟
defaults write com.apple.menuextra.clock "DateFormat" -string "\"EEE d MMM HH:mm\""
defaults write com.apple.menuextra.clock "ShowDate" -int 1
defaults write com.apple.menuextra.clock "ShowDayOfWeek" -int 1
defaults write com.apple.menuextra.clock "Show24Hour" -int 1
defaults write com.apple.menuextra.clock "ShowAMPM" -int 0


# ------------------- Trackpad - Point & Click ------------------
# -currentHost 是设置中的显示, 实际不生效
# com.apple.AppleMultitouchTrackpad 是内置触控板
# com.apple.driver.AppleBluetoothMultitouch.trackpad 是蓝牙触控板

# 触控板灵敏度
defaults write -g "com.apple.trackpad.scaling" -int 2

# 轻点点按
defaults -currentHost write -g "com.apple.mouse.tapBehavior" -int 1
defaults write com.apple.AppleMultitouchTrackpad "Clicking" -int 1

# 启用三指查询
defaults -currentHost write -g "com.apple.trackpad.threeFingerTapGesture" -int 2
defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerTapGesture" -int 2


# ------------------- Trackpad - Scroll & Zoom -------------------
# 启用自然滚动
defaults write -g "com.apple.swipescrolldirection" -bool true

# 启用双指放大
defaults -currentHost write -g "com.apple.trackpad.pinchGesture" -bool true

# 禁用双击缩放
defaults -currentHost write -g "com.apple.trackpad.twoFingerDoubleTapGesture" -bool false

# 启用双指旋转
defaults -currentHost write -g "com.apple.trackpad.rotateGesture" -bool true


# ------------------- Trackpad - More gestures -------------------
# 取消 双指 前进返回
defaults write -g AppleEnableSwipeNavigateWithScrolls -bool false

# 启用 双指 通知中心
defaults -currentHost write -g "com.apple.trackpad.twoFingerFromRightEdgeSwipeGesture" -int 3
defaults write com.apple.AppleMultitouchTrackpad "TrackpadTwoFingerFromRightEdgeSwipeGesture" -int 3

# 启用 三指 拖移
defaults -currentHost write -g "com.apple.trackpad.threeFingerDragGesture" -bool true
defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerDrag" -bool true

# 启用 control command 任意位置拖动、拖移
defaults write -g NSWindowShouldDragOnGesture -bool true

# 启用 四指 左右桌面
defaults -currentHost write -g "com.apple.trackpad.fourFingerHorizSwipeGesture" -int 2
defaults write com.apple.AppleMultitouchTrackpad "TrackpadFourFingerHorizSwipeGesture" -int 2

# 禁用 四指 左右桌面
# defaults write com.apple.AppleMultitouchTrackpad "TrackpadFourFingerHorizSwipeGesture" -int 0

# 启用 四指 向上调度
defaults -currentHost write -g "com.apple.trackpad.fourFingerVertSwipeGesture" -int 2
defaults write com.apple.AppleMultitouchTrackpad "TrackpadFourFingerVertSwipeGesture" -int 2
defaults write com.apple.dock showMissionControlGestureEnabled -int 1

# 禁用 四指 向上调度
# defaults write com.apple.dock showMissionControlGestureEnabled -int 0

# 禁用 四指 向下
defaults write com.apple.dock showAppExposeGestureEnabled -int 0

# 禁用 捏合控制台, 张开桌面
defaults -currentHost write -g "com.apple.trackpad.fiveFingerPinchSwipeGesture" -int 0
defaults write com.apple.dock showLaunchpadGestureEnabled -int 0
defaults write com.apple.dock showDesktopGestureEnabled -int 0

# 退出登陆以生效


# ------------------- Keyboard - Keyboard -------------------
# 禁用持续按住触发西班牙语
defaults write -g "ApplePressAndHoldEnabled" -int 0

# 禁用 Caps 切换输入法
defaults write -g "TISRomanSwitchState" -int 0

# 允许 Tab 键切换焦点
defaults write -g "AppleKeyboardUIMode" -int 2

# 重复频率, 不会显示在设置中
defaults write -g "KeyRepeat" -int 1

# 重复前的 delay, 不会显示在设置中
defaults write -g "InitialKeyRepeat" -int 13

# 直接功能键
defaults write -g com.apple.keyboard.fnState -int 0

# 去除 Option + 字母 键入 希腊字母

mkdir -p ~/Library/KeyBindings/ && touch ~/Library/KeyBindings/DefaultKeyBinding.dict
echo '{ "~a" = (); "~b" = (); "~c" = (); "~d" = (); "~e" = (); "~f" = (); "~g" = (); "~h" = (); "~i" = (); "~j" = (); "~k" = (); "~l" = (); "~m" = (); "~n" = (); "~o" = (); "~p" = (); "~q" = (); "~r" = (); "~s" = (); "~t" = (); "~u" = (); "~v" = (); "~w" = (); "~x" = (); "~y" = (); "~z" = (); }' > ~/Library/KeyBindings/DefaultKeyBinding.dict

# 修饰键 Caps -> Control
hidutil property --set '{
  "UserKeyMapping":[{
    "HIDKeyboardModifierMappingSrc":30064771129,
    "HIDKeyboardModifierMappingDst":30064771300
  }]
}'


# ------------------- Keyboard - Text -------------------
# 取消自动更正
defaults write -g "NSAutomaticSpellingCorrectionEnabled" -int 0
defaults write -g "WebAutomaticSpellingCorrectionEnabled" -int 0

# 取消首字母大写
defaults write -g "NSAutomaticCapitalizationEnabled" -int 0

# 取消两次空格句号
defaults write -g "NSAutomaticPeriodSubstitutionEnabled" -int 0

# ------------------- Keyboard - Shortcuts -------------------
# 移除系统的内置快捷键

# 移除 显示/隐藏 Dock（52, 64、65未知）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 52 "<dict><key>enabled</key><false/></dict>"

# 移除 mission control（32、34）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 32 "<dict><key>enabled</key><false/></dict>"
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 34 "<dict><key>enabled</key><false/></dict>"

# 移除 Application window（33、35）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 33 "<dict><key>enabled</key><false/></dict>"
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 35 "<dict><key>enabled</key><false/></dict>"

# 移除 show desktop（36、37）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 36 "<dict><key>enabled</key><false/></dict>"
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 37 "<dict><key>enabled</key><false/></dict>"

# 移除 switch to desktop1（118）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 118 "<dict><key>enabled</key><false/></dict>"

# 移除 switch to desktop2（119）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 119 "<dict><key>enabled</key><false/></dict>"

# 移除 switch to desktop3（120）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 120 "<dict><key>enabled</key><false/></dict>"

# 移除 quick note（190）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 190 "<dict><key>enabled</key><false/></dict>"

# 移除 open keyboard access（12）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 12 "<dict><key>enabled</key><false/></dict>"

# 移除 ^F2（7）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 7 "<dict><key>enabled</key><false/></dict>"

# 移除 ^F3（8）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 8 "<dict><key>enabled</key><false/></dict>"

# 移除 ^F4（9）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 9 "<dict><key>enabled</key><false/></dict>"

# 移除 ^F5（10）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 10 "<dict><key>enabled</key><false/></dict>"

# 移除 ^F6（11）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 11 "<dict><key>enabled</key><false/></dict>"

# 移除 ^F7（13）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 13 "<dict><key>enabled</key><false/></dict>"

# 移除 ^F8（57）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 57 "<dict><key>enabled</key><false/></dict>"

# 移除 cmd丶（27）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 27 "<dict><key>enabled</key><false/></dict>"

# 移除 前一个输入法（60）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 60 "<dict><key>enabled</key><false/></dict>"

# 移除 后一个输入法（61）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 61 "<dict><key>enabled</key><false/></dict>"

# 移除 cmdshift3 截图（28）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 28 "<dict><key>enabled</key><false/></dict>"

# 移除 ^cmdshift3 截图（29）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 29 "<dict><key>enabled</key><false/></dict>"

# 移除 cmdshift4 截图（30）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 30 "<dict><key>enabled</key><false/></dict>"

# 移除 ^cmdshift4 截图（31）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 31 "<dict><key>enabled</key><false/></dict>"

# 移除 cmdshift5 截图（184）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 184 "<dict><key>enabled</key><false/></dict>"

# 移除 spotlight cmd space（64）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 64 "<dict><key>enabled</key><false/></dict>"

# 移除 option cmd space（65）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 65 "<dict><key>enabled</key><false/></dict>"

# 移除 增强、减弱对比度（25、26）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 25 "<dict><key>enabled</key><false/></dict>"
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 26 "<dict><key>enabled</key><false/></dict>"

# 移除 反转颜色（21）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 21 "<dict><key>enabled</key><false/></dict>"

# 移除 voice over（59）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 59 "<dict><key>enabled</key><false/></dict>"

# 移除 accessibliy control（162）
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 162 "<dict><key>enabled</key><false/></dict>"


# ------------- Custom System shortcuts ------------------

# 2025.3.22 更新后也变成了移除

# ⌘ caps（⌃）3 全功能截图
defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 184 "<dict><key>enabled</key><false/></dict>"


# ⌘ caps（⌃）J move to left desktop（79, 80未知）
defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 79 "<dict><key>enabled</key><false/></dict>"


# ⌘ caps（⌃）K move to right desktop（81, 82未知）
defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 81 "<dict><key>enabled</key><false/></dict>"


# ---------------- 调度中心 ---------------
# 取消 自动排列空间
defaults write com.apple.dock "mru-spaces" -int 0

# 开启 切换应用时切换空间
defaults write -g "AppleSpacesSwitchOnActivate" -int 1

# 开启 应用分组
defaults write com.apple.dock "expose-group-apps" -int 1

# 开启 显示器具有单独空间
defaults write com.apple.spaces "spans-displays" -int 1


# ---------------- 通用 ------------------
# 自动隐藏滚动条
defaults write -g "AppleShowScrollBars" -string 'Automatic'

# 点击滚动条跳转
defaults write -g "AppleScrollerPagingBehavior" -int 1


# ----------------- 声音 -----------------
# 提醒音量为 0
defaults write -g "com.apple.sound.beep.volume" -int 0

# ----------------- 隐私&安全 ---------------
# 允许任何安装源
sudo spctl --master-enable

# ----------------- 截图 -----------------
# 禁用 截图阴影 Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -int 1

# 默认 jpg 格式
defaults write com.apple.screencapture type JPG

# 重启 Dock
killall Dock

# 重置键盘、触控板
/System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u