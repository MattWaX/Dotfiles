. "$HOME/.config/shell/aliases/funcs.sh"

# tmux aliases
if exist tmux; then
    alias tm='tmux'
    alias tma='tmux attach-session'
    alias tmd='tmux detach-client'

    alias tmls='tmux list-sessions'

    tmrunh() {
        if [ -z $2 ]; then 
            time=2
        else
            time=$2
        fi
        tmux split-window -v "watch -cn $time \"$1\""
    }
    alias tmrh='tmrunh'

    tmrunv() {
        if [ -z $2 ]; then 
            time=2
        else
            time=$2
        fi
        tmux split-window -h "watch -cn $time \"$1\""
    }
    alias tmrv='tmrunv'

    alias tmr='tmrv'
fi
