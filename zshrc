source ~/.zi/bin/zi.zsh

# ZSH option

## history setting
setopt HIST_IGNORE_ALL_DUPS HIST_EXPIRE_DUPS_FIRST HIST_IGNORE_DUPS HIST_IGNORE_SPACE HIST_SAVE_NO_DUPS INC_APPEND_HISTORY

## pushd and other
setopt PUSHD_IGNORE_DUPS AUTO_PUSHD AUTO_LIST INTERACTIVE_COMMENTS AUTO_CD

## completion settings - pretty print - ignore case
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:corrections' format ' %F{green}-- %d (errors: %e) --%f'
zstyle ':completion:*:descriptions' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*:functions' ignored-patterns '(_*|pre(cmd|exec))'
zstyle ':completion:*' use-cache true
zstyle ':completion:*' rehash true

# exports

## faster startup, but less safer
export ZSH_DISABLE_COMPFIX="true"

## LS color, defined esp. for cd color, 'cause exa has its own setting
export CLICOLOR=1
export LSCOLORS=ExGxFxdaCxDaDahbadeche

zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

zicompinit

zi ice pick"async.zsh" src"pure.zsh"
zi light sindresorhus/pure

zi snippet OMZL::git.zsh
zi snippet OMZP::git
zi snippet OMZP::autojump

zi ice as'null' sbin'bin/*' 
zi light z-shell/zsh-diff-so-fancy

zi light z-shell/F-Sy-H
zi light z-shell/H-S-MW

zi ice wait lucid atinit='zpcompinit'
zi light zdharma/fast-syntax-highlighting
zi ice wait lucid atload'_zsh_autosuggest_start'
zi light zsh-users/zsh-autosuggestions

autoload -Uz compinit; compinit
zinit cdreplay -q

autoload -Uz compinit
compinit

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias cls='clear'
alias vi='nvim'
alias -s py=nvim       # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s js=nvim
alias -s c=nvim
alias -s java=nvim
alias -s txt=nvim
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
