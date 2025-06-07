. "$HOME/.config/shell/aliases/funcs.sh"

# nvim aliases
if exist nvim; then
    alias vim='nvim'
    alias vi='vim'
    alias vidb='vi -c DBUI'
    alias nzo="~/.scripts/zoxide_openfiles_nvim.sh"

    alias sudovi='sudo -E -s nvim'
    alias svi='sudovi'

    # Notes aliases
    dump_path="$HOME/Documents/Appunti/_Note/Dump.md"
    if [ -f "$dump_path" ]; then
        alias dump='vi $dump_path'
        alias dp='dump'
    fi
fi

