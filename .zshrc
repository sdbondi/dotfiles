# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

source $HOME/code/zsh-z/zsh-z.plugin.zsh
autoload -U compinit && compinit

zstyle ':completion:*' menu select

