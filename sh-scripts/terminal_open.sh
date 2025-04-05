#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open Folder/File with Wezterm
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description
# @raycast.author Luxury

folder_path=$(osascript -e 'tell application "Finder" to get the POSIX path of (selection as text)')
if [ -f "$folder_path" ]; then
    folder_path=$(dirname "$folder_path")
fi
wezterm-gui start --cwd "$folder_path"