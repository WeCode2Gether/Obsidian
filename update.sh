#!/bin/bash
timestamp=$(date '+%A, %B %d, %Y %I:%M %p')

cp -r ~/.config/hypr ~/Desktop/WeCode2Gether/ConfigFiles/.config
cp -r ~/.config/kitty ~/Desktop/WeCode2Gether/ConfigFiles/.config
cp -r ~/.config/neofetch ~/Desktop/WeCode2Gether/ConfigFiles/.config
cp -r ~/.config/zshrc ~/Desktop/WeCode2Gether/ConfigFiles/.config
cp -r ~/.config/ytfzf ~/Desktop/WeCode2Gether/ConfigFiles/.config
cp -r ~/.config/Vencord ~/Desktop/WeCode2Gether/ConfigFiles/.config
cp -r ~/.config/ml4w ~/Desktop/WeCode2Gether/ConfigFiles/.config
cp -r ~/Documents/Obsidian\ Vault/ ~/Desktop/WeCode2Gether/Obsidion 
cd ~/Desktop/WeCode2Gether/ConfigFiles && git add . && git commit -m "updated $timestamp" && git push
cd ~/Desktop/WeCode2Gether/Obsidion && git add . && git commit -m "updated $timestamp" && git push
