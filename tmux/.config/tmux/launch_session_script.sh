sessions_dir="$HOME/.config/tmux/session_scripts"
script=$(ls $sessions_dir | fzf-tmux -p 70%,40% -- --preview "bat --color always $sessions_dir/{}")

if [ -z $script ]; then
    exit 0
else
    "$sessions_dir/$script"
fi
