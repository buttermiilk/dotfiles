<h1 align="center"><img src='https://i.imgur.com/HPCj1fT.png' height='100'><br>dotfiles</br></h1>
<p align="center">some dotfiles for my friend, omori style.<br>focus mainly on intuitiveness, because I am dumb myself.</br></p>

<div align="center">

<a href="https://github.com/buttermiilk/dotfiles/blob/main/LICENSE"><img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="License"></a>
<a href="https://github.com/buttermiilk/dotfiles"><img src="https://img.shields.io/github/stars/buttermiilk/dotfiles.svg" alt="GitHub stars"></a>
<a href="https://github.com/buttermiilk/dotfiles/issues"><img src="https://img.shields.io/github/issues/buttermiilk/dotfiles.svg" alt="GitHub issues"></a>
<a href="https://github.com/buttermiilk/dotfiles/actions"><img src="https://img.shields.io/github/actions/workflow/status/buttermiilk/dotfiles/ci.yml?branch=main" alt="Build Status"></a>

</div>

---
## Information
Yeah I have friends. One of them asked me to get the "thigh-high socks on, cat ears, maid outfit" Linux distro on their machine so they can do more things with their computer. They liked OMORI, so I had to find dotfiles matching that. 

There was no good and usable dotfiles for that, and because he wants it to be small and all, the choice would definitely be i3wm. The OMORI dotfiles I found was Hyprland, and it was broken as hell. So here we are.

## Setup
Warning, very unusable. Customizable though, so do whatever you want with these files. If you still want to use this anyway, make sure to move the font in global. Create if you haven't:
```bash
mkdir -p /usr/local/share/fonts
```
Then refresh your font cache.
```bash
fc-cache
```
Oh, about the packages. Get `yay` first, or `paru` if you will. If you're lazy building any of this, congratulations, we're the same.
```bash
sudo pacman -S git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
# After yay's installed
cd ..
rm -rf yay-bin
```
Packages are quite minimal.
```bash
sudo pacman -Syu \
  i3-wm i3status dunst picom rofi \
  alacritty feh xorg-xinit xorg \
  ttf-font-awesome noto-fonts \
  maim network-manager-applet blueman \
  papirus-icon-theme
```
And in AUR:
```bash
yay -S ttf-jetbrains-mono polybar-git \
  adapta-gtk-theme papirus-folders-git
```
Clone this repo **to a directory first**.
```bash
git clone https://github.com/buttermiilk/dotfiles ./miilk-dotfiles
```
Before proceeding, **back up your current dotfiles**. Then, when you're ready, `cd` in and do the dirty work.

Tweak the commands as you will.
```bash
cd miilk-dotfiles
mv ./OMORI_GAME.ttf /usr/local/share/fonts # Or use cp, safer
fc-cache # Optionally, also check if it's in there
cp -rf . ..
```

## License, contrib, all that
Do anything with the files from here, not like it is that useful to be licensed.

About contribution, if you think my friend will be happy with one or some extra tweaks, make some changes and let me know. My friend and I will appreciate that.
