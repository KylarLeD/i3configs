#!/bin/bash

# Dependency list
apps=(
  "kitty"
  "nvim"
  "firefox"
)

# Install dependencies
echo "installing dependencies..."
sleep 1
sudo pacman -S "${apps[@]}"

# Overwrite config files.

echo "Replacing/adding config files..."

# i3
sudo rm -rf i3
mv ~/Congits/ ~/.config/

# Kitty
mv ~/Congits/kitty/ ~/.config/

# nvim
mv ~/Congits/nvim ~/.config/
