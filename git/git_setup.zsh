# Fix this without ln -sf


ln -sf $GIT/gitignore_global $HOME/.gitignore_global

git config --global core.excludesfile $HOME/.gitignore_global
