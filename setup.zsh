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

# Link vimrc
ln -sf $VIM_ROOT/vimrc $HOME/.vimrc
mkdir -p $HOME/.config/nvim/
echo "source $HOME/.vimrc" > $HOME/.config/nvim/init.vim

# Suggestions
echo "Install homebrew and mas if on Mac"
echo "Install anaconda and run again."
echo "Install Neovim"