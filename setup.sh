#!/bin/bash
# Supposed to be ran on a clean Arch system.

# Check if yay is present, if not just get the prebuilt binary
if ! command -v yay &> /dev/null; then
  echo "'yay' is not installed. Installing binary build."
  git clone https://aur.archlinux.org/yay-bin.git
  cd yay-bin
  makepkg -si
  cd ..
  rm -rf yay-bin
fi

# Install required stuff
sudo pacman -Syu --needed \
  i3-wm i3status dunst picom rofi \
  alacritty feh xorg-xinit xorg \
  ttf-font-awesome noto-fonts \
  maim network-manager-applet blueman \
  papirus-icon-theme zsh thunar \
  ttf-jetbrains-mono-nerd git
yay -S polybar-git adapta-gtk-theme \
  papirus-folders-git

# Get oh-my-zsh
sh -c "$(curl -fsSL https://install.ohmyz.sh/)" "" --unattended

# Finish
echo ""
echo "Installation OK"
