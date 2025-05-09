# misc aliases

alias srcb='source ~/.bashrc'                # src:          Reload .bashrc file
alias src='source ~/.zshrc'

alias syctl='systemctl'

alias grep='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias cat='bat'

alias c='clear -x'

alias R='R -q --vanilla'

alias zotify='zotify --config-location ~/.config/zotify/config.json --credentials-location ~/.config/zotify/credentials.json'
album-art-update() {
    sacad_r ~/Music 1024 cover.png
    mogrify -format png ~/Music/*/*/*.jpg
    rm ~/Music/*/*/*.jpg
}

# cd aliases
alias home='cd ~'
alias ..='cd ..'

# yazi aliases
alias y='yazi'
Y () {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# nvim aliases
alias vim='nvim'
alias vi='vim'
alias vidb='vi -c DBUI'
alias nzo="~/.scripts/zoxide_openfiles_nvim.sh"

dump_path="$HOME/Documents/Appunti/_Note/Dump.md"
if [ -f "$dump_path" ]; then
    alias dump='vi $dump_path'
    alias dp='dump'
fi

alias sudovi='sudo -E -s nvim'

# zathura pdf reader
zt() { ( zathura "$@" &> /dev/null & ) &> /dev/null }

# spredcheet - improvided 
alias scim='sc-im'
alias sc='scim'

# music player controller
alias mp='ncmpcpp'

# presenterm
alias presenterm='presenterm -x --image-protocol auto'
alias slide='presenterm'
