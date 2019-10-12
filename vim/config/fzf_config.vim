nnoremap \ :FindUnderCursor<CR>
nnoremap <leader>\ :Find<SPACE>

nnoremap <silent> <leader><tab> :FZF<CR>
nnoremap <silent> <leader>f :GFiles<CR>
nnoremap <silent> <tab> :Buffers<CR>
nnoremap <silent> <leader>l :BLines<CR>
nnoremap <silent> <leader>al :Lines<CR>

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*,**/node_modules/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)

command! -bang -nargs=* FindUnderCursor call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*,**/node_modules/*" --color "always" '.shellescape(expand('<cword>')).'| tr -d "\017"', 1, <bang>0)

set grepprg=rg\ --vimgrep

function! s:session_list()
    redir => sessions
        silent !ls -d ~/.vim-sessions/* 
    redir END
    let filteredList = split(sessions, '\n')[1:]

    call filter(filteredList, 'v:val != ""')

    return filteredList
endfunction

function! s:load_session(e)
    :execute 'source' a:e

endfunction

nnoremap <silent> <Leader>sr :call fzf#run({
\ 'source': reverse(<sid>session_list()),
\ 'sink': function('<sid>load_session'),
\ 'options': "+m",
\ 'down': len(<sid>session_list()) + 2
\})<CR>
