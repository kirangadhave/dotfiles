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
        Plug 'alvan/vim-closetag'
        Plug 'heavenshell/vim-jsdoc', { 
          \ 'for': ['javascript', 'javascript.jsx','typescript'], 
          \ 'do': 'make install'
        \}

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


"""""" Auto close config
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.tsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" Setup to use autocmd. valid values jsdoc, esdoc,tsdoc
let g:jsdoc_formatter = "tsdoc"

nmap <silent> <C-c> <Plug>(jsdoc)
