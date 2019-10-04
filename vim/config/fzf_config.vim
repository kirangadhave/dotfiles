nnoremap \ :FindUnderCursor<CR>
nnoremap <leader>\ :Find<SPACE>

nnoremap <silent> <leader><tab> :FZF<CR>
nnoremap <silent> <leader>f :GFiles<CR>
nnoremap <silent> <tab> :Buffers<CR>

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*,**/node_modules/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)

command! -bang -nargs=* FindUnderCursor call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*,**/node_modules/*" --color "always" '.shellescape(expand('<cword>')).'| tr -d "\017"', 1, <bang>0)

set grepprg=rg\ --vimgrep

unalias z 2> /dev/null
z() {
  [ $# -gt 0 ] && _z "$*" && return
  cd "$(_z -l 2>&1 | fzf --height 40% --nth 2.. --reverse --inline-info +s --tac --query "${*##-* }" | sed 's/^[0-9,.]* *//')"
}

