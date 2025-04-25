# better ls aliases

alias ls='lsd'

alias dir='ls -hF'
alias lt="ls --tree"
alias l.='ls -d .*'             # short listing, only hidden files - .*
alias l='ls -lahF'             # long, sort by newest to oldest
alias la='ls -Al'               # show hidden files
alias lc='ls -lcr'              # sort by change time
alias lk='ls -lSr'              # sort by size
alias lh='ls -lSrh'             # sort by size human readable
alias lm='ls -al | more'        # pipe through 'more'
alias lo='ls -laSFh'            # sort by size largest to smallest
alias lr='ls -lR'               # recursive ls
alias ld='ls -ltr'              # sort by date
alias lu='ls -lur'              # sort by access time
