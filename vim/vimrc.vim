source $VIM_HOME/config/pluginmanager.vim
source $VIM_HOME/config/base_config.vim
source $VIM_HOME/config/hybrid_line_number_with_switch.vim
source $VIM_HOME/config/nerdTree_config.vim
source $VIM_HOME/config/lightline_config.vim
source $VIM_HOME/config/colorscheme.vim
source $VIM_HOME/config/fzf_config.vim

imap jj <ESC>

set laststatus=2

" Quickly edit/reload this configuration file
nnoremap gev :e $MYVIMRC<CR>wgf<CR>
nnoremap gsv :so $MYVIMRC<CR>

set wildignore+=**/node_modules/**

nnoremap <C-q> :close<CR>
nnoremap <C-e> :tabedit %<CR>

nnoremap <leader>r :checktime<CR>

nmap<leader>ca <Plug>(coc-codeaction)

nmap <silent> <C-[> <Plug>(coc-diagnostic-next)

inoremap <C-a> <C-o>a

highlight StatusLineNC cterm=bold ctermfg=white ctermbg=darkgray

augroup BgHighlight
    autocmd!
    autocmd WinEnter * set relativenumber
    autocmd WinLeave * set norelativenumber
augroup END

augroup CursorLineOnlyInActiveWindow
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  autocmd WinLeave * setlocal nocursorline
augroup END  

augroup BgHighlight
    autocmd!
    autocmd WinEnter * set colorcolumn=120
    autocmd WinLeave * set colorcolumn=0
augroup END



let g:sessions_dir = '~/.vim-sessions'

silent !mkdir ~/.vim-sessions > /dev/null 2>&1

exec 'nnoremap <Leader>ss :mksession! ' . g:sessions_dir . '/*.vim<C-D><BS><BS><BS><BS><BS>'

nnoremap <leader><Space> :noh<CR>

let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

hi Visual term=reverse cterm=reverse
