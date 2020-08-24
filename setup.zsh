source $HOME/.dotfiles/zsh/paths.zsh

#####################
# ZSH CONFIG        #
#####################

# Link zsh config
ln -sf $ZSH_ROOT/zshrc $HOME/.zshrc
# Link  p10k config
ln -sf $ZSH_CONFIG/p10k.zsh $HOME/.p10k.zsh
# source and reload zsh
source $HOME/.zshrc