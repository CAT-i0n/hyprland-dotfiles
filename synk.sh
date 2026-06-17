#!/bin/bash
repo_path=~/github/hyprland-dotfiles/.config  
config_path=~/.config
config_folders=("fish" "foot" "hypr" "mako" "rofi" "waybar" "gtk-3.0" neofetch)

for config_folder in "${config_folders[@]}"; do
    echo $config_path/$config_folder
    rsync -avu $config_path/$config_folder $repo_path 
done
