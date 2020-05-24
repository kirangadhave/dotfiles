# Setup shortcuts
export DOTFILES_HOME="$HOME/.dotfiles"
export ZSH_HOME="$DOTFILES_HOME/zsh"
export TMUX_HOME="$DOTFILES_HOME/tmux"
export VIM_HOME="$DOTFILES_HOME/vim"
export TMUX_PLUGINS="$TMUX_HOME/plugins"
export VIM_PLUGINS="$VIM_HOME/plugins"
export GIT="$DOTFILES_HOME/git"
export ALACRITTY_HOME="$DOTFILES_HOME/alacritty"

# Copy alacritty config
ln -sf $ALACRITTY_HOME/alacritty.yml $HOME/.alacritty.yml

# Copy vim config
ln -sf $VIM_HOME/vimrc $HOME/.vimrc
