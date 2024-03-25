#!/bin/bash

# Raycast Script Command Template
#
# Duplicate this file and remove ".template." from the filename to get started.
# See full documentation here: https://github.com/raycast/script-commands
#
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Toggle Hidden Files
# @raycast.mode fullOutput
#
# Optional parameters:
# @raycast.icon https://www.raycast.com/_next/image?url=https%3A%2F%2Ffiles.raycast.com%2Fyysxrgavxm1c676o8g3kbjw72krw&w=48&q=75
# @raycast.packageName Raycast Scripts

STATUS=`defaults read com.apple.finder AppleShowAllFiles` 
if [ $STATUS == YES ]; 
then 
defaults write com.apple.finder AppleShowAllFiles NO 
else 
defaults write com.apple.finder AppleShowAllFiles YES 
fi 
killall Finder