#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Right Space
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description Yabai swap to right space
# @raycast.author Luxury

yabai -m space --focus next || yabai -m space --focus first && yabai -m window --focus mouse
echo $(yabai -m query --spaces --space | grep label | cut -d\" -f4)