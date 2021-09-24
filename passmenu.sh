#!/usr/bin/env bash

declare -a options=( 
"github - github.com"
"gmail-dexterous650@gmail.com - gmail.com"
"gmail-dexthost650@gmail.com - gmailhost.com"
"github_push_pass - gmailpush"
"steam - steam.com"
"quit"
)
choice=$(printf '%s\n' "${options[@]}" | dmenu -h 24 -l 20 -p 'Passmenu')

if [[ "$choice" == "quit" ]]; then
    echo "Terminated" && exit 1
elif [ "$choice" ]; then
     cfg=$(printf '%s\n' "${choice}" | awk '{printf $NF}')
     pass -c "$cfg"
else
    echo "Terminated" && exit 1
fi
