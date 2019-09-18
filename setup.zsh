export DOTFILES_HOME="$HOME/.dotfiles"
export ZSH_HOME="$DOTFILES_HOME/zsh"
export TMUX_HOME="$DOTFILES_HOME/tmux"


if [ ! -f "$DOT_FILES/ran_once" ]; then
    touch $DOT_FILES/ran_once
    git submodule update --init --recursive
else
    git pull --recurse-submodules
fi

source $ZSH_HOME/zsh_setup.zsh
source $TMUX_HOME/tmux_setup.zsh