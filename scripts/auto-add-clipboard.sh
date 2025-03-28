#!/bin/bash
# 需要先 chmod 777, 然后再添加到启动项, 否则无法生效
if pgrep "fswatch"; then
    pkill fswatch
fi

# 使用nohup在后台运行
# 虽然写着 JPEG, 但也支持 PNG
nohup fswatch -e "/Users/luxury/Desktop/\." --event Renamed "/Users/luxury/Desktop/" | while read pic; do            
osascript -e "set the clipboard to (read (POSIX file \"$pic\") as JPEG picture)"
done > /dev/null 2>&1 &
