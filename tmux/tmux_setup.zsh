export TMUX_PLUGINS="$TMUX_HOME/plugins"

source $DOTFILES_HOME/seperator.zsh
echo "Setting up TMUX"
source $DOTFILES_HOME/seperator.zsh

ln -sf $TMUX_HOME/.tmux/.tmux.conf $HOME/.tmux.conf
ln -sf $TMUX_HOME/tmux.conf $HOME/.tmux.conf.local
source $DOTFILES_HOME/seperator.zsh
echo "Setting up TMUX"
source $DOTFILES_HOME/seperator.zsh
