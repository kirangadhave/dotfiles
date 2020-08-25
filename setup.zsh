source $HOME/.dotfiles/zsh/paths.zsh

#####################
# ZSH CONFIG        #
#####################

# Link zsh config
echo "source $ZSH_ROOT/zshrc_base" > $ZSH_ROOT/zshrc
sed -n '/# added by/,/# <<< conda initialize/p' $HOME/.bash_profile >> $ZSH_ROOT/zshrc
ln -sf $ZSH_ROOT/zshrc $HOME/.zshrc
# Link  p10k config
ln -sf $ZSH_CONFIG/p10k.zsh $HOME/.p10k.zsh
# source and reload zsh
source $HOME/.zshrc

# Download iterm color profiles
if [[ `uname` == "Darwin" ]]; then
    if [[ -d $ITERM_COLORS ]]; then;
        cd $ITERM_COLORS
        git pull
        cd $DOTFILES
    else;
        git clone https://github.com/mbadolato/iTerm2-Color-Schemes.git $ITERM_COLORS
    fi
fi

# Link vimrc
ln -sf $VIM_ROOT/vimrc $HOME/.vimrc
mkdir -p $HOME/.config/nvim/
echo "source $HOME/.vimrc" > $HOME/.config/nvim/init.vim

# Suggestions
echo "Install homebrew and mas if on Mac"
echo "Install anaconda and run again."
echo "Install Neovim"
