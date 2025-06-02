width=${2:-30%}
height=${2:-70%}
x=${2:-100%}

dump="$HOME/Documents/Appunti/_Note/Dump.md"

if [ -e "$dump" ]; then
    ln -s "$dump" ~/.dump.md
    tmux popup -x"$x" -yS -w"$width" -h"$height" -E "nvim ~/.dump.md -c \"cd ${dump%/*/*}\""
else
    tmux popup -x"$x" -yS -w"$width" -h"$height" -E "nvim ~/.dump.md"
fi

