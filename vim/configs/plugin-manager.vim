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

    " HTML
        Plug 'mattn/emmet-vim'


    " Startify
        Plug 'mhinz/vim-startify' 

    " Typescript
        Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'HerringtonDarkholme/yats.vim'
        Plug 'MaxMEllon/vim-jsx-pretty'
        Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
        Plug 'alvan/vim-closetag'


call plug#end()

