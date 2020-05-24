if empty(glob('$VIM_PLUGINS/plug.vim'))
  silent !curl -fLo $VIM_PLUGINS/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('$VIM_PLUGINS')
    " Colorscheme
        Plug 'flazz/vim-colorschemes'

     " NerdTree
        set rtp+=$VIM_HOME/plugins/nerdtree
        Plug 'scrooloose/nerdtree'
        Plug 'Xuyuanp/nerdtree-git-plugin'
        Plug 'ryanoasis/vim-devicons'

call plug#end()

