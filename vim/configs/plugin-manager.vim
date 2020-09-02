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
        Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
        " Plug 'pangloss/vim-javascript'
        " Plug 'leafgarland/typescript-vim'
        " Plug 'peitalin/vim-jsx-typescript'
        Plug 'MaxMEllon/vim-jsx-pretty'
        Plug 'HerringtonDarkholme/yats.vim'
        Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
        Plug 'jparise/vim-graphql'

call plug#end()

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-pairs', 'coc-marketplace', 'coc-import-cost', 'coc-styled-components']


if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

""" TODO: Move to proper place
set re=0

if $TERM_PROGRAM =~ "iTerm"
  set termguicolors
endif
