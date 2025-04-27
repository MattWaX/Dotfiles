width=${2:-30%}
height=${2:-70%}
x=${2:-100%}

tmux popup -x"$x" -yS -w"$width" -h"$height" -E "nvim ~/.todo.md"
