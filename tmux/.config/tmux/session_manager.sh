#!/bin/sh

session="$HOME/$(fd -t d . $HOME | sed "s|^$HOME/||" | fzf-tmux -p 80%,60% -- --preview 'tree -C -L 2 {}')"
session=${session%/}
default="${session##*/}"

if [ $session != $HOME ]; then
    tmux new -dc $session -s ${@:-$default} && tmux switch-client -t ${@:-$default}
else
    exit 0
fi
