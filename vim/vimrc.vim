source $VIM_HOME/config/pluginmanager.vim
source $VIM_HOME/config/base_config.vim
source $VIM_HOME/config/hybrid_line_number_with_switch.vim

imap jj <ESC>

set background=dark
"colorscheme hybrid_material

let g:enable_bold_font = 1
let g:enable_italic_font = 1
"  let g:hybrid_transparent_background = 1

set laststatus=2

let g:lightline = {
            \       'colorscheme': "wombat",
            \       'active': {
            \       'left': [["mode", "paste"], ["gitbranch", "readonly", "filename", "modified"]]
            \  },
            \  'component_function': {
            \       'gitbranch': "fugitive#head"
            \  }
            \}

nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

let NERDTreeQuitOnOpen = 1

let NERDTreeAutoDeleteBuffer = 1

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
