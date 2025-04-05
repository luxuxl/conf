#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open Folder/File with VS Code
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description
# @raycast.author Luxury

folder_path=$(osascript -e 'tell application "Finder" to get the POSIX path of (the selection as alias list)'
)
code "$folder_path"