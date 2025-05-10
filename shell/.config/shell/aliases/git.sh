git_push_notes() {
    git add "$HOME/Documents/Appunti/*";
    if [ $? ]; then
        git commit -m "$(date +%Y-%m-%d\ %H:%M:%S)";
        git push;
    fi
}

alias notes_push='git_push_notes'
