nvim=$(which nvim)

if [ -x "$nvim" ]; then
    alias vi="nvim"
    alias vim="nvim"
fi
