if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
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

    " FZF
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'

     " Commenting 
        Plug 'tpope/vim-commentary'

     " Easymotion 
        Plug 'easymotion/vim-easymotion'

    " Git
        Plug 'airblade/vim-gitgutter'
        Plug 'tpope/vim-fugitive'

    " Vim eunuch 
        Plug 'tpope/vim-eunuch'

    " VIM Surround 
        Plug 'tpope/vim-surround'

    " Lightline status plugin
        Plug 'itchyny/lightline.vim'
call plug#end()

