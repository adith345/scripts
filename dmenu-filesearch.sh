#!/usr/bin/env bash
TERMINAL='gnome-terminal -e'
EDITOR='vim'
EDITOR2='emacs'

declare -a options=(
"vim - $HOME/.vimrc"
"vifm - $HOME/.config/vifm/vifmrc"
"zsh - $HOME/.zshrc"
"quit"
)
choice=$(printf '%s\n' "${options[@]}" | dmenu -h 24 -l 20 -p 'Edit Config')

if [[ "$choice" == "quit" ]]; then
    echo "Terminated" && exit 1
elif [ "$choice" ]; then
     cfg=$(printf '%s\n' "${choice}" | awk '{printf $NF}')
     $EDITOR2 $cfg
else
    echo "Terminated" && exit 1
fi
