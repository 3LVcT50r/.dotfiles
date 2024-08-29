#!/bin/zsh

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '

stty stop undef	

autoload -U colors && colors

# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/victor/.zshrc'

autoload -Uz compinit
zstyle ':completion:*' menu select
zstyle ':completion::*' menu yes select
zstyle ':completion::complete:*' use-cache 1
zmodload zsh/complist
compinit
_comp_options+=(globdots)
# End of lines added by compinstall

xset r rate 200 25

# vi mode
#bindkey -v
#export KEYTIMEOUT=1

alias ls="ls --color"

alias l="ls -a"
alias ll="ls -la"
alias vim="nvim"
alias cl="clear"
alias gst="git status"
alias gpsh="git push"
alias gpll="git pull"
alias ..="cd .."

# eval "$(starship init zsh)"
# export STARSHIP_CONFIG=~/.config/starship.toml
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Created by `pipx` on 2024-04-25 15:17:13
export PATH="$PATH:/home/victor/.local/bin"
