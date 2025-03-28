#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Clash Global
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description Change Clash proxy mode to global
# @raycast.author Luxury

curl -s -X PATCH http://localhost:9090/configs -d '{ "mode": "global" }'
echo "global"