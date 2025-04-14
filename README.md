> [!NOTE]
> All the stuff in here aren't tested yet. When this box goes away, keep reading. Otherwise, go back. You will regret your decision if you don't.

<h1 align="center"><img src='https://i.imgur.com/HPCj1fT.png' height='100'><br>dotfiles</br></h1>
<p align="center">some dotfiles for my friend, omori style.<br>focus mainly on intuitiveness, because I am dumb myself.</br></p>

<div align="center">

<a href="https://github.com/buttermiilk/dotfiles/blob/main/LICENSE"><img src="https://img.shields.io/badge/license-MIT-blue.svg?style=for-the-badge" alt="License"></a>
<a href="https://github.com/buttermiilk/dotfiles"><img src="https://img.shields.io/github/stars/buttermiilk/dotfiles.svg?style=for-the-badge" alt="GitHub stars"></a>
<a href="https://github.com/buttermiilk/dotfiles/issues"><img src="https://img.shields.io/github/issues/buttermiilk/dotfiles.svg?style=for-the-badge" alt="GitHub issues"></a>
<a href="https://github.com/buttermiilk/dotfiles"><img src="https://img.shields.io/github/repo-size/buttermiilk/dotfiles.svg?style=for-the-badge" alt="Repo size"></a>

</div>

---
## Information
Yeah I have friends. One of them asked me to get the "thigh-high socks on, cat ears, maid outfit" Linux distro on their machine so they can do more things with their computer. They liked OMORI, so I had to find dotfiles matching that. 

There was no good and usable dotfiles for that, and because he wants it to be small and all, the choice would definitely be i3wm. The OMORI dotfiles I found was Hyprland, and it was broken as hell. So here we are.

## Setup
> [!TIP]
> Don't trust random scripts off the internet, even mine. Always review before proceeding.

Warning, very unusable. Customizable though, so do whatever you want with these files. If you still want to use this anyway, make sure to move the font in global. Create if you haven't:
```bash
# -p: If it already exists, it just exits silently and leaves it alone
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
  papirus-icon-theme zsh \
  ttf-jetbrains-mono-nerd
```
And in AUR:
```bash
yay -S polybar-git adapta-gtk-theme \
  papirus-folders-git
```
Also grab [`oh-my-zsh`](https://github.com/ohmyzsh/ohmyzsh) to have that terminal theme. Don't be lazy and try to do this later - the installation moves your old `.zshrc` away.
```bash
sh -c "$(curl -fsSL https://install.ohmyz.sh/)"
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
chsh -s $(which zsh)
```
There's a script that can do thi-
### Why the hell did you place that here?!
No, seriously. You should not just run it like that when you don't know what's happening under the hood. Once you do, get this script over.

```bash
sh -c "$(curl -fsSL https://buttermiilk.github.io/dotfiles/setup.sh)"
```
Be aware this script does not check anything.

## License, contrib, all that
Do anything with the files from here, not like it is that useful to be licensed.

About contribution, if you think my friend will be happy with one or some extra tweaks, make some changes and let me know. My friend and I will appreciate that.
