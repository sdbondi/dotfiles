alias nemacs='emacs -nw'
alias semacs='sudo emacs -nw'

alias aptse='apt search'
alias aptin='sudo aptdcon -i'
alias aptre='sudo apt remove'
alias aptupd='sudo apt update'
alias aptupg='sudo apt upgrade'

alias isit='ps -e | grep -i'

alias g='git'
alias ganp="git commit --amend -a --no-edit && git push --force"

alias say='espeak -v en '

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias ff='xdg-open . > /dev/null'

# Make sure git autocomplete works for alias
complete -o default -o nospace -F _git g

# Ruby
alias irb='irb --readline -r irb/completion'
alias rii='ri -Tf ansi'

# NPM
alias ni='npm install'
alias nid='npm install -D'
alias nig='npm install -g'
alias nr='npm run'
alias nrm='npm remove'
alias nrc='npm run commit'

# RBENV
alias rbe='rbenv'
alias rbev='rbenv versions'
alias rbei='rbenv install'

# Zeus
alias ze='zeus'
alias zes='zeus s'
alias zeg='zeus g'

# Processes
alias tu='top -u $USER'

# Rails
alias kl='killall -9 lighttpd'
alias sr='./script/rails'
alias ss='./script/rails server'
alias sgen='./script/rails generate'
alias sc='./script/rails console'

alias android-connect="mtpfs -o allow_other /media/nexus4"
alias android-disconnect="fusermount -u /media/nexus4"

# PHP
alias phpcomposer='php $HOME/.bin/composer.phar'

# VIM
alias v='nvim'

# tmux
alias mux='tmuxinator'

# Docker
alias dr=docker
alias dc=docker-compose
alias drst='cat .dev-containers | xargs docker start'

# Vagrant
alias vs='vagrant ssh'
alias vu='vagrant up'
alias vh='vagrant halt'

# Clients
alias ltdgtun='ssh -NL36666:lovetodogood.org.za:36666 lovetodogood@lovetodogood.org.za'

alias xclipf='xclip -sel clip <'

# React Native
alias rn=react-native

# Kubernetes
alias k=kubectl
alias kscc='kubectl config set current-context'

# screen
alias sc=screen
alias scr="screen -r"
alias scs="screen -S"
alias scls="screen -ls"
