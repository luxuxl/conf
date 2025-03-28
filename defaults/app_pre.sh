#!/bin/bash

# ----------------------- Finder - View Options ----------------------
# 设置 column 为默认视图
# 其他视图代号: icnv, glyv, nlsv
# defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# 设置 name 为默认分组
defaults write com.apple.finder FXPreferredGroupBy -string 'Name'

# 桌面及所有 Icon 视图 显示预览
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showIconPreview true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:showIconPreview true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:showIconPreview true" ~/Library/Preferences/com.apple.finder.plist

# 桌面及所有 Icon 视图 显示简介
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist

# 桌面及所有 Icon 视图 简介于底部
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:labelOnBottom true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:labelOnBottom true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:labelOnBottom true" ~/Library/Preferences/com.apple.finder.plist

# 桌面 排序方式 紧贴网格
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

# 所有 Icon 视图 排序方式 名称
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy name" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy name" ~/Library/Preferences/com.apple.finder.plist

# 设置图标大小、文字大小、间距
# /usr/libexec/PlistBuddy -c "Set :*:IconViewSettings:iconSize 64" ~/Library/Preferences/com.apple.finder.plist
# /usr/libexec/PlistBuddy -c "Set :*:IconViewSettings:gridSpacing 42" ~/Library/Preferences/com.apple.finder.plist
# /usr/libexec/PlistBuddy -c "Set :*:IconViewSettings:textSize 12" ~/Library/Preferences/com.apple.finder.plist

# ---------------------- Finder - Preference -------------------------

# 桌面显示项目
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false

# “访达”新窗口打开位置
#              : PfCm, PfHm, PfDe, PfDo
# Volume       : PfVo
# All My Files : PfAF
# Other…       : PfLo
# ... NewWindowTargetPath "file://..."
defaults write com.apple.finder NewWindowTarget -string 'PfHm'

# 总是新标签打开
defaults write com.apple.finder FinderSpawnTab -bool true

# 清空标签
defaults write com.apple.finder FavoriteTagNames '()'

# 显示所有文件扩展名
defaults write -g AppleShowAllExtensions -bool true

# 禁止 提示修改扩展名
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# 禁止 从 iCloud 移除提示
defaults write com.apple.finder FXEnableRemoveFromICloudDriveWarning -bool false

# 文件夹显示在前面
defaults write com.apple.finder "_FXSortFoldersFirst" -bool true
defaults write com.apple.finder "_FXSortFoldersFirstOnDesktop" -bool true

# 显示隐藏文件
# defaults write com.apple.finder AppleShowAllFiles -bool true

# 搜索位置 当前文件夹
defaults write com.apple.finder FXDefaultSearchScope 'SCcf'

# 不隐藏 Library
chflags nohidden ~/Library

# 删除 Downloads 文件夹, 将桌面的文件夹链接过去
mkdir ~/Desktop/downloads
sudo rm -r ~/Downloads
ln -s ~/Desktop/downloads ~/Downloads

# 各种 Bar 的状态
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowSidebar -bool true
defaults write com.apple.finder SidebarWidth 194
defaults write com.apple.finder ShowPreviewPane -bool false
defaults write com.apple.finder ShowRecentTags -bool false

# 工具栏仅图标
defaults write com.apple.finder "NSToolbar Configuration Browser" -dict-add "TB Display Mode" 2
defaults write com.apple.finder "NSToolbar Configuration Browser" -dict-add "TB Item Identifiers" '("com.apple.finder.BACK","com.apple.finder.SRCH")'

# 禁止 在 USB 介质上创建 DS_Store
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# 禁止 在云端创建 DS_Store
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# 可选 Allow quitting Finder via ⌘ + Q , doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true


# ------------------------- Safari --------------------------
# 首页, 展示背景图片和收藏, 其他全关闭
defaults write com.apple.Safari "ShowBackgroundImageInFavorites" -bool true
defaults write com.apple.Safari "ShowFavorites" -bool true
defaults write com.apple.Safari "ShowFrequentlyVisitedSites" -bool false
defaults write com.apple.Safari "ShowHighlightsInFavorites" -bool false
defaults write com.apple.Safari "ShowPrivacyReportInFavorites" -bool false
defaults write com.apple.Safari "ShowReadingListInFavorites" -bool false
defaults write com.apple.Safari "HideStartPageSiriSuggestionsEmptyItemView" -bool false
defaults write com.apple.Safari "ShowSiriSuggestionsPreference" -bool false

# 默认下载地址
defaults write com.apple.Safari "NSNavLastRootDirectory" -string "~/Desktop"

# 下载成功移除
defaults write com.apple.Safari "DownloadsClearingPolicy" -int 2

# 关闭安全打开
defaults write com.apple.Safari "AutoOpenSafeDownloads" -bool false

# 紧凑标签, 好看
defaults write com.apple.Safari "ShowStandaloneTabBar" -bool false

# 在标签页中始终显示网站标题
defaults write com.apple.Safari "EnableNarrowTabs" -bool false

# 始终在新标签页打开
defaults write com.apple.Safari "TabCreationPolicy" -int 2

# 打开新标签页或窗口后，使其成为活跃标签页或窗口
defaults write com.apple.Safari "OpenNewTabsInFront" -bool true

# 关闭自动填充
defaults write com.apple.Safari "AutoFillCreditCardData" -bool false
defaults write com.apple.Safari "AutoFillFromAddressBook" -bool false
defaults write com.apple.Safari "AutoFillMiscellaneousForms" -bool true
defaults write com.apple.Safari "AutoFillPasswords" -bool true

# 设置搜索引擎
defaults write com.apple.Safari "SearchProviderShortName" -string "Google"

# 关闭快速网站搜索
defaults write com.apple.Safari "WebsiteSpecificSearchEnabled" -bool false

# 开启后台载入最佳结果
defaults write com.apple.Safari "PreloadTopHit" -bool true

# 启用开发者菜单
defaults write com.apple.Safari "IncludeDevelopMenu" -bool true

# 允许 Tab 选中链接
defaults write com.apple.Safari "WebKitPreferences.tabFocusesLinks" -int 1
defaults write com.apple.Safari "WebKitTabToLinksPreferenceKey" -int 1

# 清空工具栏
defaults write com.apple.Safari "NSToolbar Configuration BrowserToolbarIdentifier-v4.6" -dict-add "TB Item Identifiers" "(InputFieldsToolbarIdentifier,UnifiedTabBarToolbarIdentifier)"


# --------- Custom Application Shortcuts (自定义快捷键) - English Version ----------

# 将最小化 ⌘+m 设置得很复杂, 防止误触
defaults write -g NSUserKeyEquivalents -dict-add "Minimize..." "@~^$m"

# 偏好设置 ⌘`
# defaults write -g NSUserKeyEquivalents -dict-add "Preferences..." "@`"

# 禁用 control+cmd+space 弹出emoji
defaults write -g NSUserKeyEquivalents -dict-add "Emoji & Symbols" "@~^$ "

# Apple Application tab move
defaults write -g NSUserKeyEquivalents -dict-add "Show Previous Tab" "@j"
defaults write -g NSUserKeyEquivalents -dict-add "Show Next Tab" "@k"
defaults write -g NSUserKeyEquivalents -dict-add "Pin Tab" "@p"
defaults write -g NSUserKeyEquivalents -dict-add "Unpin Tab" "@p"

# Chrome tab move
# Cant work if change com.google.chrome NSUserKeyEquivalents
defaults write -g NSUserKeyEquivalents -dict-add "Select Previous Tab" "@j"
defaults write -g NSUserKeyEquivalents -dict-add "Select Next Tab" "@k"
defaults write -g NSUserKeyEquivalents -dict-add "Pin Tab" "@p"

# Finder 快捷键
defaults write com.apple.finder NSUserKeyEquivalents -dict-add "View Clean Up" "@r"
defaults write com.apple.finder NSUserKeyEquivalents -dict-add "Merge All Windows" "^r"
defaults write com.apple.finder NSUserKeyEquivalents -dict-add "Add to Sidebar" "^p"
# defaults write com.apple.finder NSUserKeyEquivalents -dict-add "Open" "^e"

# Preview 快捷键
defaults write -g NSUserKeyEquivalents -dict-add "Highlight Text" "@$h"
defaults write com.apple.preview NSUserKeyEquivalents -dict-add "Text Selection" "@$s"

# Safari 快捷键
# 替换愚蠢的 cmd i 发送邮件
defaults write com.apple.Safari NSUserKeyEquivalents -dict-add "Share..." "@i"
