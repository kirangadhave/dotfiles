let g:sessions_dir = '~/.vim-sessions'

silent !mkdir ~/.vim-sessions > /dev/null 2>&1


fu! SaveSess()
    redir => directory
        silent :!git rev-parse --show-toplevel
    redir END
   if stridx(directory, "not a git repository") != "-1"
        return     
   endif

    

    let dirList = split(directory, '\n')[1:]
    call filter(dirList, 'v:val != ""')
    let dirPath = dirList[0] . "/.vim"
    let dirName =  split(dirList[0], "/")[-1]
    execute 'silent !mkdir ' .  dirPath . '> /dev/null 2>&1;'
    let sessName = dirPath . "/" . dirName . ".vim"
    exec ":mksession! " . sessName
    
    exec "silent !ln -sf " . sessName . " " . g:sessions_dir . "/" . dirName . ".vim"
endfunction

fu! RestoreSess()
    if !empty(argv())
        return
    endif

    redir => directory
        silent :!git rev-parse --show-toplevel
    redir END

   if stridx(directory, "not a git repository") != "-1"
        return     
   endif

    let dirList = split(directory, '\n')[1:]
    call filter(dirList, 'v:val != ""')
    let dirPath = dirList[0] . "/.vim"
    let dirName =  split(dirList[0], "/")[-1]
    let sessName = dirPath . "/" . dirName . ".vim"

    if filereadable(sessName)
        exec 'so ' . sessName
    
        if bufexists(1)
            for l in range(1, bufnr($))
                if bufwinnr(l) == -1
                    exec 'sbuffer ' . l
                endif
            endfor
        endif
        
    endif
endfunction


"exec 'nnoremap <Leader>ss :mksession! ' . g:sessions_dir . '/*.vim<C-D><BS><BS><BS><BS><BS>'
nnoremap <Leader>ss :call SaveSess()<CR>

autocmd VimLeave,VimLeavePre * call SaveSess()
autocmd VimEnter * nested call RestoreSess()
