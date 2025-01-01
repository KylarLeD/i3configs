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

# I just put this here for good measure
sleep 3

# Delete empty directory
sudo rm -rf ~/Configs-for-i3wm/

# Also for good measure...
sleep 1

echo "finished, enjoy"
