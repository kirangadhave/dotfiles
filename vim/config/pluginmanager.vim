if empty(glob('$VIM_PLUGINS/plug.vim'))
  silent !curl -fLo $VIM_PLUGINS/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('$VIM_PLUGINS')
    Plug 'scrooloose/nerdtree'
    Plug 'kristijanhusak/vim-hybrid-material'

    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
    Plug 'junegunn/fzf.vim'
    Plug 'tomtom/tcomment_vim'    
    Plug 'easymotion/vim-easymotion'
    Plug 'airblade/vim-gitgutter'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'itchyny/lightline.vim'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-surround'
    Plug 'mattn/emmet-vim'
    Plug 'dense-analysis/ale'
    Plug 'ianks/vim-tsx' 


call plug#end()

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
