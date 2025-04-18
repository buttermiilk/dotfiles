#!/bin/bash

# Set wallpaper
feh --bg-scale ~/.config/background/blackspace.jpg

# Start compositor
picom &

# Launch bar
~/.config/polybar/launch.sh &

# Start notification daemon
dunst &

# Set keyboard layout, if needed
setxkbmap us
