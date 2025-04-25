# bash config

# setting up environment variables 
export PS1="\[\e[0;34m\]\t \[$(tput setaf 8)\]\[$(tput bold)\]\u@\h \[\e[0;36m\]\[$(tput bold)\]\W \[\e[0;31m\]\[$(tput bold)\]~> \[\e[0m\]"

export PATH=$PATH:/home/MattWaX/.cargo/bin:/home/MattWaX/.local/bin:/home/MattWaX/.scripts

export EDITOR=nvim
export BROWSER=zen-browser

# importing aliases
source ~/.config/shell/aliases.sh

Y () {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# setting up vim mode shortcuts
# set -o vi
# shortcuts normal mode
bind -x '"\C-f":clear -x' -m vi
bind -x '"\C-n":nvim' -m vi
bind -x '"\C-y":Y' -m vi
bind -x '"\C-g":lazygit' -m vi

# shortcuts insert mode
bind -x '"\C-f":clear -x'
bind -x '"\C-n":nvim'
bind -x '"\C-y":Y'
bind -x '"\C-g":lazygit'

# zoxide setup
eval "$(zoxide init bash)"

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
