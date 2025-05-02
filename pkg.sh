# I just don't like remembering this
# Testing though, don't rely on it
pacman -Sy --needed xorg-server xorg-xinit i3 i3status-rust alacritty dunst picom feh zsh git stow noto-fonts noto-fonts-cjk ttf-jetbrains-mono-nerd
sh -c "$(curl -fsSL https://install.ohmyz.sh/)"
echo ""
read -p "Y'testing? Can make you a user for that. (y/n) " answer
if [["$answer" == 'y']]; then
  useradd -m test
  passwd test
  echo "test ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
  su - test
fi
exit 0