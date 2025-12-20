#!/bin/bash

exist() {
    command -v "$1" >/dev/null 2>&1
}

if exist sk; then
    fuzzy=sk
elif exist fzf; then
    fuzzy=fzf
else
    exit 1
fi

DIRS=(
    $(fd . "$HOME/code/" --type=dir)
    "$HOME"
    "$HOME/Documents"
    "$HOME/Projects"
)

if [[ $# -eq 1 ]]; then
    selected=$1
else
    selected=$(fd . "${DIRS[@]}" --type=dir --max-depth=1 --full-path --base-directory $HOME |
        sed "s|^$HOME/||" |
        $fuzzy --margin 10% --color="16")

    [[ $selected ]] && selected="$HOME/$selected"
fi

[[ ! $selected ]] && exit 0

selected_name=$(basename "$selected" | tr . _)

for session in `fd . $HOME/.config/tmux/session_scripts/ --full-path`; do
    if [ $selected_name == $(basename "$session") ]; then
        $session
        break
    fi
done

if ! tmux has-session -t "$selected_name"; then
    tmux new-session -ds "$selected_name" -c "$selected"
    tmux select-window -t "$selected_name:1"
fi

tmux switch-client -t "$selected_name"
