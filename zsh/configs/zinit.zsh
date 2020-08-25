# Most of the config borrowed from https://github.com/crivotz/dot_files/blob/master/linux/zplugin/zshrc
# Thanks to crivotz for the script!

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

# AUTOSUGGESTIONS, TRIGGER PRECMD HOOK UPON LOAD
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
zinit ice wait"0a" lucid atload"_zsh_autosuggest_start"
zinit light zsh-users/zsh-autosuggestions

# ENHANCD
# A next-generation cd command with an interactive filter
zinit ice wait"0b" lucid
zinit light b4b4r07/enhancd
export ENHANCD_FILTER=fzy:fzf:peco

# HISTORY SUBSTRING SEARCHING
zinit ice wait"0b" lucid atload'bindkey "$terminfo[kcuu1]" history-substring-search-up; bindkey "$terminfo[kcud1]" history-substring-search-down'
zinit light zsh-users/zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# TAB COMPLETIONS
zinit ice wait"0b" lucid blockf
zinit light zsh-users/zsh-completions
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*:descriptions' format '-- %d --'
zstyle ':completion:*:processes' command 'ps -au$USER'
zstyle ':completion:complete:*:options' sort false
zstyle ':fzf-tab:complete:_zlua:*' query-string input
zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,comm,cmd -w -w"
zstyle ':fzf-tab:complete:kill:argument-rest' extra-opts --preview=$extract'ps --pid=$in[(w)1] -o cmd --no-headers -w -w' --preview-window=down:3:wrap
zstyle ':fzf-tab:complete:cd:*' extra-opts --preview=$extract'exa -1 --color=always ${~ctxt[hpre]}$in'

# FZF
zinit ice lucid wait'0b' from"gh-r" as"program"
zinit light junegunn/fzf-bin

# FZF BINARY AND TMUX HELPER SCRIPT
zinit ice lucid wait'0c' as"command" pick"bin/fzf-tmux"
zinit light junegunn/fzf

# BIND MULTIPLE WIDGETS USING FZF
zinit ice lucid wait'0c' multisrc"shell/{completion,key-bindings}.zsh" id-as"junegunn/fzf_completions" pick"/dev/null"
zinit light junegunn/fzf

# FZF-TAB
# Replace zsh's default completion selection menu with fzf!
zinit ice wait"1" lucid
zinit light Aloxaf/fzf-tab

# SYNTAX HIGHLIGHTING
# Feature rich syntax highlighting for Zsh.
zinit ice wait"0c" lucid atinit"zpcompinit;zpcdreplay"
zinit light zdharma/fast-syntax-highlighting

# NVM
# nvm is an awesome tool but it can be kind of a pain to install and keep up to date.
# This zsh plugin allows you to quickly setup nvm once, save it in your dotfiles, then never worry about it again.
# This enables NVM auto use when entering proper directories. This needs to be set before.
export NVM_AUTO_USE=true
zinit ice wait"1" lucid
zinit light lukechilds/zsh-nvm

# EXA
# exa is a modern replacement for the command-line program ls that ships with Unix and Linux operating systems, with more features
# and better defaults. It uses colours to distinguish file types and metadata. It knows about symlinks, extended attributes, and
# Git. And it’s small, fast, and just one single binary.
# By deliberately making some decisions differently, exa attempts to be a more featureful, more user-friendly version of ls.
zinit ice wait"2" lucid from"gh-r" as"program" mv"exa* -> exa"
zinit light ogham/exa
zinit ice wait blockf atpull'zinit creinstall -q .'
chpwd() exa --icons -Flaigh
# TODO: Should add an alias

# ZSH DIFF SO FANCY
# diff-so-fancy strives to make your diffs human readable instead of machine readable. This helps improve code quality and helps you
# spot defects faster.
zinit ice wait"2" lucid as"program" pick"bin/git-dsf"
zinit light zdharma/zsh-diff-so-fancy
source $ZSH_CONFIG/git-diff-colors.zsh

# BAT - https://github.com/sharkdp/bat
# A cat(1) clone with syntax highlighting and Git integration. 
zinit ice from"gh-r" as"program" mv"bat* -> bat" pick"bat/bat" atload"alias cat=bat"
zinit light sharkdp/bat

# RIPGREP - https://github.com/BurntSushi/ripgrep
# ripgrep is a line-oriented search tool that recursively searches your current directory for a regex pattern.
zinit ice from"gh-r" as"program" mv"ripgrep* -> ripgrep" pick"ripgrep/rg"
zinit light BurntSushi/ripgrep

# FORGIT - https://github.com/wfxr/forgit
# Utility tool for using git interactively. Powered by junegunn/fzf.
zinit ice wait lucid
zinit load 'wfxr/forgit'

# LAZYGIT - https://github.com/jesseduffield/lazygit
# A simple terminal UI for git commands, written in Go with the gocui library.
zinit ice lucid wait"0" as"program" from"gh-r" mv"lazygit* -> lazygit" atload"alias lg='lazygit'"
zinit light 'jesseduffield/lazygit'
alias lg=lazygit

# GIT-FLOW-COMPLETION
zinit light petervanderdoes/git-flow-completion
