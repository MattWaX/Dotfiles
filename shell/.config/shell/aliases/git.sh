git_push_date_commit() {
    git add *;
    git commit -m "$(date +%Y-%m-%d\ %H:%M:%S)";
    git push;
}

alias gitdate='git_push_date_commit'
