nnoremap \ :FindUnderCursor<CR>
nnoremap <leader>\ :Find<SPACE>

nnoremap <silent> <leader><tab> :FZF<CR>
nnoremap <silent> <leader>f :GFiles<CR>
nnoremap <silent> <tab> :Buffers<CR>
nnoremap <silent> <leader>l :BLines<CR>
nnoremap <silent> <leader>al :Lines<CR>

" Find a symbol
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*,**/node_modules/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)

" Find the symbol under cursor
command! -bang -nargs=* FindUnderCursor call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*,**/node_modules/*" --color "always" '.shellescape(expand('<cword>')).'| tr -d "\017"', 1, <bang>0)

" Set vim grep to use rg
set grepprg=rg\ --vimgrep

nnoremap ` :Marks<CR>
" nnoremap <C-w> :Windows<CR>

" Go to open buffer if possible
let g:fzf_buffers_jump = 1


