# Enable colors and change prompt:
autoload -U colors && colors # Load colors

setopt autocd   # Automatically cd into typed directory.
stty stop undef # Disable ctrl-s to freeze terminal.
setopt interactive_comments

# setting the title of the current shell session
precmd() {
    echo -n -e "\033]0;$(dirs)\007"
}

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="$HOME/.history"
setopt inc_append_history

# Basic auto/tab complete:
autoload -Uz +X compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
bindkey '^H' vi-backward-kill-word
bindkey -M vicmd '^H' vi-backward-kill-word

preexec() { echo -ne '\e[3 q'; } # Use _ shape cursor for each new prompt.

# function zle-line-init zle-keymap-select {
# PS1="$PS1FALLBACK${${KEYMAP/vicmd/=!=}/(main|viins)/~~>}%{$reset_color%} "
# PS2=$PS1
# zle reset-prompt
# }

# zle -N zle-line-init
# zle -N zle-keymap-select

bindkey '^[[P' delete-char

# starship init
[ -e "$(which starship)" ] && eval "$(starship init zsh)"

# Edit line in vim with ctrl-e:
autoload edit-command-line
zle -N edit-command-line
bindkey '^e' edit-command-line
bindkey -M vicmd '^[[P' vi-delete-char
bindkey -M vicmd '^e' edit-command-line
bindkey -M visual '^[[P' vi-delete

bindkey '^N' history-search-forward
bindkey '^P' history-search-backward

# importing aliases
source ~/.config/shell/aliases.sh

# zoxide setup
[ -e "$(which zoxide)" ] && eval "$(zoxide init zsh)"

if [ -e "$(which fzf)" ]; then
    # Set up fzf key bindings and fuzzy completion
    bindkey -r '^I'
    eval "$(fzf --zsh)"
    export FZF_DEFAULT_OPTS=--color=16
fi

# Load syntax highlighting; should be last.
source /usr/share/zsh/plugins/fast-syntax-highlighting.plugin.zsh 2>/dev/null
