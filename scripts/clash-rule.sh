#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Clash Rule
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description Change Clash proxy mode to rule
# @raycast.author Luxury

curl -s -X PATCH http://localhost:9090/configs -d '{ "mode": "rule" }'
echo "Rule"