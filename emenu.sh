#!/usr/bin/env bash
KAK='gnome-terminal -- kak '

declare -a options=(
"vim - /home/adith_pc/.vimrc"
"vifm - $HOME/.config/vifm/vifmrc"
"zsh - $HOME/.zshrc"
"webmenu - $HOME/scripts/webmenu.sh"
"emenu - $HOME/scripts/emenu.sh"
"passmenu - $HOME/scripts/passmenu.sh"
"bspwm - $HOME/.config/bspwm/bspwmrc"
"sxhkd - $HOME/.config/sxhkd/sxhkdrc"
"quit"
)
choice=$(printf '%s\n' "${options[@]}" | dmenu -h 24 -l 20 -p 'Emenu')
if [[ "$choice" == "quit" ]]; then
    echo "Terminated" && exit 1
elif [ "$choice"  ]; then
     cfg=$(printf '%s\n' "${choice}" | awk '{printf $NF}')
     $KAK $cfg
else
    echo "Terminated" && exit 1
fi
