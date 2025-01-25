#!/bin/bash
timestamp=$(date '%B %d, %Y %I:%M %p')


cp ./update.sh ~/Desktop/WeCode2Gether/ConfigFiles
cp ./update.sh ~/Desktop/WeCode2Gether/Obsidion
cp -r ~/dotfiles/.config/hypr ~/Desktop/WeCode2Gether/ConfigFiles/hypr
cp -r ~/dotfiles/.config/kitty ~/Desktop/WeCode2Gether/ConfigFiles/kitty
cp -r ~/.config/neofetch ~/Desktop/WeCode2Gether/ConfigFiles/neofetch
cp -r ~/dotfiles/.config/zshrc ~/Desktop/WeCode2Gether/ConfigFiles/zshrc
cp -r ~/.config/ytfzf ~/Desktop/WeCode2Gether/ConfigFiles/ytfzf
cp -r ~/.config/Vencord ~/Desktop/WeCode2Gether/ConfigFiles/Vencord
cp -r ~/dotfiles/.config/ml4w ~/Desktop/WeCode2Gether/ConfigFiles/ml4w
cp -r ~/Documents/Obsidian\ Vault/ ~/Desktop/WeCode2Gether/Obsidion 
cd ~/Desktop/WeCode2Gether/ConfigFiles && git add . && git commit -m "updated $timestamp" && git push
cd ~/Desktop/WeCode2Gether/Obsidion && git add . && git commit -m "updated $timestamp" && git push
