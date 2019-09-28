source $VIM_HOME/config/pluginmanager.vim
source $VIM_HOME/config/base_config.vim
source $VIM_HOME/config/hybrid_line_number_with_switch.vim
source $VIM_HOME/config/nerdTree_config.vim
source $VIM_HOME/config/lightline_config.vim
source $VIM_HOME/config/colorscheme.vim


imap jj <ESC>

set background=dark
set laststatus=2

" Quickly edit/reload this configuration file
nnoremap gev :e $MYVIMRC<CR>wgf<CR>
nnoremap gsv :so $MYVIMRC<CR>

set wildignore+=**/node_modules/**
