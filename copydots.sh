#!/bin/bash
set -euo pipefail

# location of all config dots
sourceDir="$HOME/.config"

# target folder with all config dirs
targetDir="$HOME/git/dots/config" 

# which dots we want to keep
appsConfigList=("i3" "tmux" "helix" "zsh" "scripts")

# loops through each to copy correspond config
for app in "${appsConfigList[@]}"; do
  rsync -av \
    --exclude 'runtime/' \
    --exclude '.git/' \
    "$sourceDir/$app/" "$targetDir/$app/"
done
