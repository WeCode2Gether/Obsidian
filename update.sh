#!/bin/bash
timestamp=$(date '%B %d, %Y %I:%M %p')

cp -r ~/.config/hypr ~/Desktop/WeCode2Gether/ConfigFiles/hypr
cp -r ~/.config/kitty ~/Desktop/WeCode2Gether/ConfigFiles/kitty
cp -r ~/.config/neofetch ~/Desktop/WeCode2Gether/ConfigFiles/neofetch
cp -r ~/.config/zshrc ~/Desktop/WeCode2Gether/ConfigFiles/zshrc
cp -r ~/.config/ytfzf ~/Desktop/WeCode2Gether/ConfigFiles/ytfzf
cp -r ~/.config/Vencord ~/Desktop/WeCode2Gether/ConfigFiles/Vencord
cp -r ~/.config/ml4w ~/Desktop/WeCode2Gether/ConfigFiles/ml4w
cp -r ~/Documents/Obsidian\ Vault/ ~/Desktop/WeCode2Gether/Obsidion 
cd ~/Desktop/WeCode2Gether/ConfigFiles && git add . && git commit -m "updated $timestamp" && git push
cd ~/Desktop/WeCode2Gether/Obsidion && git add . && git commit -m "updated $timestamp" && git push
