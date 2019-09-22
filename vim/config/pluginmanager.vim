if empty(glob('$VIM_PLUGINS/plug.vim'))
  silent !curl -fLo $VIM_PLUGINS/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('$VIM_PLUGINS')
    Plug 'scrooloose/nerdtree'
    Plug 'kristijanhusak/vim-hybrid-material'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf.vim'
    Plug 'tomtom/tcomment_vim'    
    Plug 'easymotion/vim-easymotion'
    Plug 'airblade/vim-gitgutter'
    Plug 'itchyny/lightline.vim'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-surround'
    Plug 'mattn/emmet-vim'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tpope/vim-fugitive'
    Plug 'jiangmiao/auto-pairs'
  "  Plug 'HerringtonDarkholme/yats.vim'
    Plug 'sheerun/vim-polyglot'
    Plug 'ryanoasis/vim-devicons'
call plug#end()

let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']

set rtp+=$VIM_HOME/plugins/nerdtree

