<h1 align="center"><img src='https://i.imgur.com/HPCj1fT.png' height='100'><br>dotfiles</br></h1>
<p align="center">my dots on i3 and i3status. shimeji simulation.<br>just making it no bloat, hassle-free, easy to configure on my own.</br></p>

<div align="center">

<a href="https://github.com/buttermiilk/dotfiles/blob/main/LICENSE"><img src="https://img.shields.io/badge/license-Apache_2.0-blue.svg?style=for-the-badge" alt="License"></a>
<a href="https://github.com/buttermiilk/dotfiles"><img src="https://img.shields.io/github/stars/buttermiilk/dotfiles.svg?style=for-the-badge" alt="GitHub stars"></a>
<a href="https://github.com/buttermiilk/dotfiles/issues"><img src="https://img.shields.io/github/issues/buttermiilk/dotfiles.svg?style=for-the-badge" alt="GitHub issues"></a>
<a href="https://github.com/buttermiilk/dotfiles"><img src="https://img.shields.io/github/repo-size/buttermiilk/dotfiles.svg?style=for-the-badge" alt="Repo size"></a>

</div>

---
## Preview
<details>
<summary>Desktop</summary>
<img src=https://i.imgur.com/SH5vCEm.png>
</details>
<details>
<summary>Fastfetch</summary>
<img src=https://i.imgur.com/BeE4kqK.png>
</details>
<details>
<summary>Some more windows</summary>
<img src="https://i.imgur.com/y5ywbxK.png">
</details>

## Information
I work on a laptop all the time, and I needed something that looks good to my eyes so I can do the work. My vibe is also something minimal and fast, hence `i3` and `i3status-rust`. 

`rofi` is still a work-in-progress, I want it to do a lot of things apart from just showing me apps to open.

### How to make it work on my machine?
I use these packages from `pacman`:
```
pacman -Sy --needed i3-wm i3status-rust \
  alacritty fastfetch picom rofi pavucontrol \
  dunst thunar gtk3 xorg xorg-xinit zsh \
  ttf-jetbrains-mono-nerf btop vim flameshot \
  redshift brightnessctl
```
and these from the AUR, you can get them using `paru` or `yay`:
```
yay -S tty-clock cbonsai zen-browser-bin
```
I also use `oh-my-zsh` because it's cool:
```bash
sh -c "$(curl -fsSL https://install.ohmyz.sh/)"
```
After you get them, stuff should *just work*.

## License
[Apache 2.0](/LICENSE). Do whatever you want with my dots, not like I'll catch you doing this and scream out loud either way. But you should make it a learning experience too.

Also my dots aren't perfect and they might fall out of updates. If you notice something like that just let me know by opening an issue.
