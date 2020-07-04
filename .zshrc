# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep nomatch notify
unsetopt extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install

zstyle :compinstall filename '/home/jello/.zshrc'

autoload -Uz compinit
compinit

autoload -Uz promptinit
promptinit
prompt walters

PROMPT='%F{green}%n%f@%F{magenta}%m%f >'
RPROMPT='%F{blue}%B%~%b%f'

zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES

alias ls='ls --color=auto'

#setfont /usr/share/kbd/consolefonts/ter-920n.psf.gz
