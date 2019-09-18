source $DOTFILES_HOME/seperator.zsh
echo "Setting up ZSH"
source $DOTFILES_HOME/seperator.zsh

export ZPLUGIN="$ZSH_HOME/zplugin/bin"

ln -sf $ZSH_HOME/zshrc $HOME/.zshrc

ln -sf $ZSH_HOME/copy_out/p10k.zsh $HOME/.p10k.zsh

source $HOME/.zshrc

source $DOTFILES_HOME/seperator.zsh
echo "Setting up ZSH"
source $DOTFILES_HOME/seperator.zsh