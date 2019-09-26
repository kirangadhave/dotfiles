if empty(glob('$VIM_PLUGINS/plug.vim'))
  silent !curl -fLo $VIM_PLUGINS/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('$VIM_PLUGINS')
    " Colorscheme
            Plug 'flazz/vim-colorschemes'
   
    " NerdTree
        Plug 'scrooloose/nerdtree'
        Plug 'Xuyuanp/nerdtree-git-plugin'
        Plug 'ryanoasis/vim-devicons'

    " FZF super fast search
        Plug '/usr/local/opt/fsz'
        Plug 'junegunn/fzf.vim'

    " Commenting 
        Plug 'tpope/vim-commentary'

    " Easymotion 
        Plug 'easymotion/vim-easymotion'

    " Git
        Plug 'airblade/vim-gitgutter'
        Plug 'tpope/vim-fugitive'

    " Lightline status plugin
        Plug 'itchyny/lightline.vim'

    " Cursors
        Plug 'terryma/vim-multiple-cursors'

    " Vim eunuch 
        Plug 'tpope/vim-eunuch'
    
    " VIM Surround 
        Plug 'tpope/vim-surround'

    " WEB DEVELOPMENT PLUGIN 
        " HTML 
            Plug 'mattn/emmet-vim'
        " JSX/TSX Plugins
            Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
            " TS Highlighting 
            Plug 'HerringtonDarkholme/yats.vim'
            Plug 'MaxMEllon/vim-jsx-pretty'
            Plug 'neoclide/coc.nvim', {'branch': 'release'}

            Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

    " Rainbow highlighting
        Plug 'thiagoalessio/rainbow_levels.vim'

call plug#end()

set rtp+=$VIM_HOME/plugins/nerdtree

let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
