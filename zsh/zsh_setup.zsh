source $DOTFILES_HOME/seperator.zsh
echo "Setting up ZSH"
source $DOTFILES_HOME/seperator.zsh

export ZPLUGIN="$ZSH_HOME/zplugin/bin"

if [ ! -f "$ZSH_HOME/ran_once" ]; then
    touch $ZSH_HOME/ran_once
    git submodule update --init --recursive
else
    git pull --recurse-submodules
fi

ln -sf $ZSH_HOME/zshrc $HOME/.zshrc

ln -sf $ZSH_HOME/copy_out/p10k.zsh $HOME/.p10k.zsh

source $HOME/.zshrc

source $DOTFILES_HOME/seperator.zsh
echo "Setting up ZSH"
source $DOTFILES_HOME/seperator.zsh