#!/bin/zsh


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

# vi mode
#bindkey -v
#export KEYTIMEOUT=1

alias ls="ls --color"

alias l="ls -a"
alias ll="ls -la"
alias vim="nvim"
alias cl="clear"

eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship.toml
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
