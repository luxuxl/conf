#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Left Windows
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description Yabai swap to left window
# @raycast.author Luxury

{ yabai -m window --focus prev || yabai -m window --focus last; } 2>/dev/null