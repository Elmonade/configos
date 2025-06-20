#zsh installer conifg. Start
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep nomatch notify
unsetopt extendedglob
bindkey -e
# zsh installer config. End

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

# Alias
alias ls='ls --color=auto'
alias dwl='dwl -s ~/.config/init.sh'

# Wayland specific alias
alias obsidian='obsidian --enable-features=UseOzonePlatform --ozone-platform=wayland'
alias postman='postman --enable-features=UseOzonePlatform --ozone-platform=wayland'
alias chromium='chromium --enable-features=UseOzonePlatform --ozone-platform=wayland'
alias slack='slack --enable-features=UseOzonePlatform --ozone-platform=wayland'
alias discord='discord --enable-features=UseOzonePlatform --ozone-platform=wayland'

# Setting environment variables
export BROWSER=firefox
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export EDITOR='lvim'
export VISUAL='lvim'
export LD_LIBRARY_PATH=/home/jello/Scrolls/bemenu
export BEMENU_RENDERERS=/home/jello/Scrolls/bemenuxport
export BEMENU_OPTS="--fn 'Kode Mono 16' --tb '#000000' --tf '#FF0000' --fb '#000000' --ff '#FFFFFF'
		    --hb '#000000' --hf '#44FF44' --nb '#000000' --ab '#000000'"

alias grimshot='grimshot copy area'
alias neofetch='macchina --theme Lithium'
export WEBKIT_DISABLE_COMPOSITING_MODE=1
export PATH=/home/jello/.local/bin:$PATH

#Rust
#export PKG_CONFIG=/home/jello/Study/Embedded/dapeq/cross-pkg-config

# CPP
#CPP multi threading
#OMP_NUM_THREADS=10

# JAVA
# export _JAVA_OPTIONS="-Xms1024m -Xmx4g"
# export _JAVA_OPTIONS="-Xint"
#export CLASSPATH=".:/usr/local/lib/antlr-4.8-complete.jar:$CLASSPATH"
#alias antlr4='java -jar /usr/local/lib/antlr-4.8-complete.jar'
#alias grun='java org.antlr.v4.gui.TestRig'
#alias grun='java -Xmx500M -cp "/usr/local/lib/antlr-4.8-complete.jar:$CLASSPATH" org.antlr.v4.gui.TestRig'
