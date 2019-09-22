source $VIM_HOME/config/pluginmanager.vim
source $VIM_HOME/config/base_config.vim
source $VIM_HOME/config/hybrid_line_number_with_switch.vim
source $VIM_HOME/config/nerdTree_config.vim

imap jj <ESC>

set background=dark
"colorscheme hybrid_material

let g:enable_bold_font = 1
let g:enable_italic_font = 1
let g:hybrid_transparent_background = 1

set laststatus=2

function! ErrorMessage() abort
    return ' '.get(g:, 'coc_status', '')
endfunction

let g:lightline = {
            \       'colorscheme': "wombat",
            \       'active': {
            \       'left': [["mode", "paste" ], ["gitbranch", "readonly", "filename", "modified"]]
            \  },
            \  'component_function': {
            \       'gitbranch': "fugitive#head",
            \  }
            \}

nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

" Quickly edit/reload this configuration file
nnoremap gev :e $MYVIMRC<CR>
nnoremap gsv :so $MYVIMRC<CR>

hi Pmenu ctermbg=gray
hi PmenuSel ctermbg=lightgray

highlight LineNr cterm=bold ctermfg=LightGray ctermbg=None
