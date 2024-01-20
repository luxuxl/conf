:: cmd 或 bat 运行
:: 1. 任务栏透明
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAcrylicOpacity /t REG_DWORD /d 0 /f

:: 2. 去除固定的快速图标
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /f

:: 3. 隐藏 Cortana
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowCortanaButton /t REG_DWORD /d 0 /f

:: 4. 隐藏任务视图
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowTaskViewButton /t REG_DWORD /d 0 /f

:: 5. 隐藏搜索栏
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v SearchboxTaskbarMode /t REG_DWORD /d 0 /f

:: 6. 重启 explorer
taskkill /f /im explorer.exe & explorer.exe