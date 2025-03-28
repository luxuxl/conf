#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Full Screen
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description Yabai Toggle Full Screen
# @raycast.author Luxury

if [[ $(yabai -m query --spaces | grep -m 1 type | cut -d\" -f4) = "stack" ]]; then
    yabai -m config layout bsp
else
    yabai -m config layout stack
fi