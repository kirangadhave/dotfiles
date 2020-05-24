nvim=$(which nvim)
export VISUAL=vim
if [ -x "$nvim" ]; then
    alias vim="nvim"
    alias vi="nvim"
fi
