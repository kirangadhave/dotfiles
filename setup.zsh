export DOTFILES_HOME="$HOME/.dotfiles"
export ZSH_HOME="$DOTFILES_HOME/zsh"
export TMUX_HOME="$DOTFILES_HOME/tmux"
export VIM_HOME="$DOTFILES_HOME/vim"
export TMUX_PLUGINS="$TMUX_HOME/plugins"
export VIM_PLUGINS="$VIM_HOME/plugins"
export GIT="$DOTFILES_HOME/git"

if [ ! -f "$DOTFILES_HOME/ran_once" ]; then
    touch "$DOTFILES_HOME/ran_once"
    git submodule update --init --recursive
else
    git pull --recurse-submodules
fi

source $ZSH_HOME/zsh_setup.zsh
source $TMUX_HOME/tmux_setup.zsh
source $VIM_HOME/vim_setup.zsh
source $GIT/git_setup.zsh
