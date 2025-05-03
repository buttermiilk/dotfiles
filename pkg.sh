# If you're lazy installing packages
# Make sure to get yay first
sudo pacman -Sy --needed i3-wm i3status-rust \
  alacritty fastfetch picom rofi pavucontrol \
  dunst thunar gtk3 xorg xorg-xinit zsh \
  ttf-jetbrains-mono-nerf btop vim flameshot \
  redshift brightnessctl
yay -S tty-clock cbonsai zen-browser-bin
sh -c "$(curl -fsSL https://install.ohmyz.sh/)"