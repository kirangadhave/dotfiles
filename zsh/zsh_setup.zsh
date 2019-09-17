source $DOTFILES_HOME/seperator.zsh
echo "Setting up ZSH"
source $DOTFILES_HOME/seperator.zsh

export ZPLUGIN="$ZSH_HOME/zplugin/bin"

if [ ! -f "$ZSH_HOME/ran_once" ]; then
    echo "ran_once not present"
    touch $ZSH_HOME/ran_once
    git submodule update --init --recursive
else
    echo "ran_once present"
    git pull --recurse-submodules
fi
source $DOTFILES_HOME/seperator.zsh
echo "Setting up ZSH"
source $DOTFILES_HOME/seperator.zsh