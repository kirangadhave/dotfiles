set rtp +=~/.vim

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
        Plug 'junegunn/fzf', {'dir': '~/opt/fzf'}
        Plug 'junegunn/fzf.vim'

     " Commenting 
        Plug 'tpope/vim-commentary'

     " Easymotion 
        Plug 'easymotion/vim-easymotion'

    " Git
        Plug 'airblade/vim-gitgutter'
        Plug 'tpope/vim-fugitive'

        Plug 'jiangmiao/auto-pairs'

    " Vim eunuch 
        Plug 'tpope/vim-eunuch'

    " VIM Surround 
        Plug 'tpope/vim-surround'

    " Lightline status plugin
        Plug 'itchyny/lightline.vim'

    " HTML
        Plug 'mattn/emmet-vim'
        Plug 'Quramy/vim-js-pretty-template'

    " Startify
        Plug 'mhinz/vim-startify' 
        
        Plug 'pangloss/vim-javascript'

    " Typescript
        Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
        Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
        Plug 'HerringtonDarkholme/yats.vim'
        Plug 'MaxMEllon/vim-jsx-pretty'
        Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
        Plug 'alvan/vim-closetag'
        Plug 'heavenshell/vim-jsdoc', { 
              \ 'for': ['javascript', 'javascript.jsx','typescript'], 
              \ 'do': 'make install'
              \}

    " Python
        Plug 'vim-scripts/indentpython.vim'  
        Plug 'Vimjas/vim-python-pep8-indent'
        Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
        Plug 'jeetsukumaran/vim-pythonsense'


call plug#end()

set updatetime=300

nmap <silent> <C-l> <Plug>(jsdoc)

echo $VIM_PLUGINS

" For faster syncing of syntax
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" Config from coc
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-pairs', 'coc-marketplace', 'coc-import-cost', 'coc-styled-components', 'coc-python' ]

" let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

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
" Disables auto-close if not in a 'valid' region (based on filetype)
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
