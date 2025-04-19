#!/bin/bash


# Dependency list
apps=(
  "kitty"
  "neovim"
  "rofi"
  "polybar"
)


# Install dependencies
echo "installing dependencies..."
sleep 1
sudo pacman -S "${apps[@]}"


# Overwrite config files.
echo "Replacing/adding config files..."





# Deletes i3 config directory, and adds mine
sudo rm -rf ~/.config/i3/
mv ~/Configs-for-i3wm/Congits/i3/ ~/.config/


# Moves my config directory to your .config directory
mv ~/Configs-for-i3wm/Congits/kitty/ ~/.config/


# Moves my nvim directory to your .config directory
mv ~/Configs-for-i3wm/Congits/nvim ~/.config/

# Deletes and replaces polybar config
sudo rm ~/etc/polybar/config.ini
mv ~/configs-for-i3wm/Congits/polybar/config.ini ~/etc/polybar


# For good measure
sleep 3


# Delete empty directory
sudo rm -rf ~/Configs-for-i3wm/


# Also for good measure
sleep 1


# Reload i3wm configuration
i3-msg reload

echo "Script complete, enjoy your new setup."
