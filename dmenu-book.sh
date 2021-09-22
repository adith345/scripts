#!/usr/bin/env bash
BROWSER="firefox"

declare -a options=( 
"youtube - https://www.youtube.com"
"website - https://www.adithpr.herokuapp.com"
"github_adith - https://www.github.com/adith345"
"dt_gitlab - https://www.gitlab.com/dwt1"
"vifm_docs - https://vifm.info/vimdoc.shtml"
"duckduckgo - https://duckduckgo.com/"
"quit"
)
choice=$(printf '%s\n' "${options[@]}" | dmenu -h 24 -l 20 -p 'Bookmarks')

if [[ "$choice" == "quit" ]]; then
    echo "Terminated" && exit 1
elif [ "$choice" ]; then
     cfg=$(printf '%s\n' "${choice}" | awk '{printf $NF}')
     $BROWSER "$cfg"
else
    echo "Terminated" && exit 1
fi
