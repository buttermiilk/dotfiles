#!/bin/bash

# Paths to theme files
i3_light="$HOME/.config/i3/theme/colors.conf"
i3_dark="$HOME/.config/i3/theme/colors-dark.conf"
polybar_light="$HOME/.config/polybar/config.ini"
polybar_dark="$HOME/.config/polybar/config.ini"
rofi_light="$HOME/.config/rofi/themes/omori.rasi"
rofi_dark="$HOME/.config/rofi/themes/omori-dark.rasi"
dunst_light="$HOME/.config/dunst/dunstrc"
dunst_dark="$HOME/.config/dunst/dunstrc"
alacritty_light="$HOME/.config/alacritty/alacritty.toml"
alacritty_dark="$HOME/.config/alacritty/alacritty.toml"

# Current theme file
current_theme="$HOME/.config/i3/theme/current_theme"

# Check current theme
if [ -f "$current_theme" ] && grep -q "dark" "$current_theme"; then
  # Switch to light theme
  ln -sf "$i3_light" "$HOME/.config/i3/theme/colors.conf"
  ln -sf "$polybar_light" "$HOME/.config/polybar/config.ini"
  ln -sf "$rofi_light" "$HOME/.config/rofi/themes/omori.rasi"
  ln -sf "$alacritty_light" "$HOME/.config/alacritty/alacritty.toml"
  echo "light" > "$current_theme"
else
  # Switch to dark theme
  ln -sf "$i3_dark" "$HOME/.config/i3/theme/colors.conf"
  ln -sf "$polybar_dark" "$HOME/.config/polybar/config.ini"
  ln -sf "$rofi_dark" "$HOME/.config/rofi/themes/omori.rasi"
  ln -sf "$alacritty_dark" "$HOME/.config/alacritty/alacritty.toml"
  echo "dark" > "$current_theme"
fi

# Handle Dunst configuration
if [ -f "$HOME/.config/dunst/dunstrc" ]; then
  if grep -q "dark" "$current_theme"; then
    mv "$HOME/.config/dunst/dunstrc" "$HOME/.config/dunst/dunstrc-dark"
    mv "$HOME/.config/dunst/dunstrc-light" "$HOME/.config/dunst/dunstrc"
    feh --bg-scale ~/.config/background/whitespace.jpg
  else
    mv "$HOME/.config/dunst/dunstrc" "$HOME/.config/dunst/dunstrc-light"
    mv "$HOME/.config/dunst/dunstrc-dark" "$HOME/.config/dunst/dunstrc"
    feh --bg-scale ~/.config/background/blackspace.jpg
  fi
fi
ln -sf "$HOME/.config/dunst/dunstrc" "$HOME/.config/dunst/dunstrc"

# Reload configurations
i3-msg reload
pkill -USR1 polybar
pkill dunst && dunst &
