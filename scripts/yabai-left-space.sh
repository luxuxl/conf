#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Left Space
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description Yabai swap to left space
# @raycast.author Luxury

yabai -m space --focus prev || yabai -m space --focus last && yabai -m window --focus mouse
echo $(yabai -m query --spaces --space | grep label | cut -d\" -f4)