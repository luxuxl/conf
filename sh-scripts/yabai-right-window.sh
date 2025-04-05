#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Right Windows
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description Yabai swap to right window
# @raycast.author Luxury

{ yabai -m window --focus next || yabai -m window --focus first || yabai -m window --focus mouse; } 2>/dev/null