. "$HOME/.config/shell/aliases/funcs.sh"

# misc aliases
src() {
    shell=$(readlink /proc/$$/exe)
    echo $shell | grep bash &>/dev/null && source ~/.bashrc
    echo $shell | grep zsh &>/dev/null && source ~/.zshrc
}

alias syctl='systemctl'

alias grep='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
if exist bat; then
    alias cat='bat'
fi

alias c='clear -x'

if exist R; then
    alias R='R -q --vanilla'
fi

if exist zotify; then
    alias zotify='zotify --config-location ~/.config/zotify/config.json --credentials-location ~/.config/zotify/credentials.json'
fi
album-art-update() {
    sacad_r ~/Music 512 cover.jpg
    mogrify -format jpg -resize 512x512 ~/Music/*/*/*.png
    rm ~/Music/*/*/*.png
}

# cd aliases
alias home='cd ~'
alias ..='cd ..'

# img viewer aliases
if exist nsxiv; then
    alias img='nsxiv'
fi

# nnn aliases
if exist nnn; then
    alias nnn='nnn -CUde'
    alias n='nnn'
fi

# yazi aliases
if exist yazi; then
    alias y='yazi'
    Y() {
        local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
        yazi "$@" --cwd-file="$tmp"
        if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
            builtin cd -- "$cwd"
        fi
        rm -f -- "$tmp"
    }
fi

# zathura pdf reader
if exist zathura; then
    zt() {
        (zathura "$@" &>/dev/null &) &>/dev/null
    }
fi

# vimiv: vim like img viewer
if exist vimiv; then
    vimg() {
        (vimiv "$@" &>/dev/null &) &>/dev/null
    }
fi

# spredcheet - improvided
if exist sc-im; then
    alias scim='sc-im'
    alias sc='scim'
fi

# music player controller
if exist rmpc; then
    alias mp='rmpc'
fi

# presenterm
if exist presenterm; then
    alias presenterm='presenterm -x --image-protocol auto'
    alias slide='presenterm'
fi
