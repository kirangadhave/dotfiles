nnoremap \ :FindUnderCursor<CR>
nnoremap <leader>\ :Find<SPACE>

nnoremap <silent> <C-p> :FZF<CR>

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*,**/node_modules/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)

command! -bang -nargs=* FindUnderCursor call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*,**/node_modules/*" --color "always" '.shellescape(expand('<cword>')).'| tr -d "\017"', 1, <bang>0)

set grepprg=rg\ --vimgrep

