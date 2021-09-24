#!/usr/bin/env bash
BROWSER="firefox"

declare -a options=( 
"youtube - https://www.youtube.com"
"website - https://www.adithpr.herokuapp.com"
"github_adith - https://www.github.com/adith345"
"dt_gitlab - https://www.gitlab.com/dwt1"
"vifm_docs - https://vifm.info/vimdoc.shtml"
"duckduckgo - https://duckduckgo.com/"
"gmail - https://mail.google.com/mail/u/0/#inbox"
"emacs_docs - https://yusbk.github.io/2021/04/27/doom-emacs-tips/"
"CLang - https://youtube.com/playlist?list=PLu0W_9lII9aiXlHcLx-mDH1Qul38wD3aR"
"gmail - https://mail.google.com/"
"quit"
)
choice=$(printf '%s\n' "${options[@]}" | dmenu -h 24 -l 20 -p 'Webmenu')

if [[ "$choice" == "quit" ]]; then
    echo "Terminated" && exit 1
elif [ "$choice" ]; then
     cfg=$(printf '%s\n' "${choice}" | awk '{printf $NF}')
     $BROWSER "$cfg"
else
    echo "Terminated" && exit 1
fi
