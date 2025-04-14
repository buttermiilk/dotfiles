#!/bin/bash
# Supposed to be ran on a clean Arch system.
# This does not check whether you have things installed or not or if you're in the right directory, so if this fails, it's your fault for not reading the README first.
# Please run this in tty, not your wm/de. Shut all wm/de related stuff down before running.

# The only check of this whole script
if ! command -v yay &> /dev/null; then
  echo "'yay' is not installed. Installing binary build."
  git clone https://aur.archlinux.org/yay-bin.git
  cd yay-bin
  makepkg -si
  cd ..
  rm -rf yay-bin
fi

# Install required stuff
sudo pacman -Syu \
  i3-wm i3status dunst picom rofi \
  alacritty feh xorg-xinit xorg \
  ttf-font-awesome noto-fonts \
  maim network-manager-applet blueman \
  papirus-icon-theme zsh \
  ttf-jetbrains-mono-nerd git
yay -S polybar-git adapta-gtk-theme \
  papirus-folders-git

# Get oh-my-zsh
sh -c "$(curl -fsSL https://install.ohmyz.sh/)"

# Back up current dots
sudo mv ~/.config ~/.config-backup

# Clone this repo
git clone https://github.com/buttermiilk/dotfiles.git ./miilk-dotfiles

# cd in and do the work
cd ./miilk-dotfiles
rm -rf setup.sh
sudo mkdir -p /usr/local/share/fonts
sudo cp ./OMORI_GAME.ttf /usr/local/share/fonts
fc-cache
cp -rf . ..
sudo chsh -s "$(which zsh)"

# Clean up trash
cd ..
rm -rf .git README.md miilk-dotfiles

# Prompt for reboot
echo ""
echo "Done. This will need a reboot, after reboot log into tty and do 'startx'."
echo "If for some reason you need to tweak something, answer 'n'. Otherwise, do 'y'."
read -p "Reboot? (y/n)" answer
if [["$answer" != 'y']]; then
  echo ""
  echo "Make sure to reboot later."
  exit 1
fi

sudo reboot
