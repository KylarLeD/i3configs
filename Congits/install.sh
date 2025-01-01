#!/bin/bash

# Dependency list
apps=(
  "kitty"
  "neovim"
  "firefox"
  "rofi"
)

# Install dependencies
echo "installing dependencies..."
sleep 1
sudo pacman -S "${apps[@]}"

# Overwrite config files.

echo "Replacing/adding config files..."

# i3
sudo rm -rf ~/.config/i3/
mv ~/Configs-for-i3wm/Congits/i3/ ~/.config/

# Kitty
mv ~/Configs-for-i3wm/Congits/kitty/ ~/.config/

# nvim
mv ~/Configs-for-i3wm/Congits/nvim ~/.config/
