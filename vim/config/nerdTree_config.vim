autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | exe 'NERDTree' | endif

let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

nnoremap <C-e> :NERDTreeToggle<CR>
