#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Query current window
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description Yabai Query current window and exclude
# @raycast.author Luxury

exclude=$(yabai -m query --windows --window | grep app | cut -d\" -f4)
echo "yabai -m rule --add app=\"^$exclude$\" manage=off" >> ~/.config/yabai/yabairc
echo "yabai -m rule --add app=\"^$exclude$\" manage=off" | pbcopy