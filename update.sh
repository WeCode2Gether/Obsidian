#!/bin/bash
# Cron is running this shell & the command for every 24 hrs is:
# 0 0 * * * ~/Desktop/WeCode2Gether/update.sh
# 12 hrs is:
# 0 0,12 * * * ~/Desktop/WeCode2Gether/update.sh


timestamp=$(date '+%B %d, %Y %I:%M %p')

# Copying the bash script to the needed repos just incase anything goes wrong
cp ~/Desktop/WeCode2Gether/update.sh ~/Desktop/WeCode2Gether/ConfigFiles
cp ~/Desktop/WeCode2Gether/update.sh ~/Desktop/WeCode2Gether/Obsidian
cp ~/Desktop/WeCode2Gether/update.sh ~/Desktop/WeCode2Gether/wallpapers

# Copying config and dotfiles to the ConfigFiles Repo
cp -r ~/dotfiles/.config/hypr ~/Desktop/WeCode2Gether/ConfigFiles/hypr
cp -r ~/dotfiles/.config/kitty ~/Desktop/WeCode2Gether/ConfigFiles/kitty
cp -r ~/.config/neofetch ~/Desktop/WeCode2Gether/ConfigFiles/neofetch
cp -r ~/dotfiles/.config/zshrc ~/Desktop/WeCode2Gether/ConfigFiles/zshrc
cp -r ~/.config/ytfzf ~/Desktop/WeCode2Gether/ConfigFiles/ytfzf
cp -r ~/.config/Vencord ~/Desktop/WeCode2Gether/ConfigFiles/Vencord
cp -r ~/dotfiles/.config/ml4w ~/Desktop/WeCode2Gether/ConfigFiles/ml4w

# Copying Obsidian notes to the Obsidian Repo
cp -r ~/Documents/CyberSecurity ~/Desktop/WeCode2Gether/Obsidian

# Copying the wallpapers I prefer to the wallpapers Repo
cp -r ~/Pictures/Wallpapers ~/Desktop/WeCode2Gether/wallpapers

# The commit and push with date stamps to Obsidian, ConfigFiles & Wallpapers
cd ~/Desktop/WeCode2Gether/ConfigFiles && git add . && git commit -m "updated $timestamp" && git push
cd ~/Desktop/WeCode2Gether/Obsidian && git add . && git commit -m "updated $timestamp" && git push
cd ~/Desktop/WeCode2Gether/wallpapers && git add . && git commit -m "updated $timestamp" && git push
