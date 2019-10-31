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
        set rtp+=~/.fzf 
        Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
        Plug 'junegunn/fzf.vim'

    " Commenting 
        Plug 'tpope/vim-commentary'

    " Easymotion 
""        Plug 'easymotion/vim-easymotion'

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

            Plug 'alvan/vim-closetag'


    Plug 'mtth/scratch.vim'
    " Rainbow highlighting
""        Plug 'thiagoalessio/rainbow_levels.vim'

call plug#end()

set rtp+=$VIM_HOME/plugins/nerdtree

let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-pairs', 'coc-marketplace', 'coc-import-cost', 'coc-styled-components']

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.tsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,typescript.tsx'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx,tsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while`<link>` won't.)
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

nnoremap ss :call scratch#open(0)<CR>
