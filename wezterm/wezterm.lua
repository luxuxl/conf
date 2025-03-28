local wezterm = require("wezterm")
local config = {
    -- 隐藏系统标题栏
    window_decorations = "RESIZE",
    -- 隐藏标签页, 和下面冲突
    enable_tab_bar = false,
    -- use_fancy_tab_bar = false, -- 标签页放大
    -- show_new_tab_button_in_tab_bar = false, -- 隐藏新建标签页
    -- hide_tab_bar_if_only_one_tab = true,
    window_close_confirmation = "NeverPrompt", -- 关闭退出提示
    default_cursor_style = "BlinkingBar", -- 光标闪动 
    adjust_window_size_when_changing_font_size = true,
    -- 以上都是必备项, 自定义从下面开始改
    color_scheme = "nord",
    font_size = 17,
    window_background_opacity = 0.6,
    macos_window_background_blur = 10,
    text_background_opacity = 1,
    window_padding = {
        left = 30,
        right = 30,
        top = 30,
        bottom = 5,
    }
    
}
return config
