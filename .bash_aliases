alias nemacs='emacs -nw'
alias semacs='sudo emacs -nw'

alias aptse='apt search'
alias aptin='sudo aptdcon -i'
alias aptre='sudo apt remove'
alias aptupd='sudo apt update'
alias aptupg='sudo apt upgrade'

alias isit='ps -e | grep -i'

alias g='git'
alias say='espeak -v en '

alias ..='cd ..'

alias ff='xdg-open . > /dev/null'

# Make sure git autocomplete works for alias
complete -o default -o nospace -F _git g

# Ruby
alias irb='irb --readline -r irb/completion'
alias rii='ri -Tf ansi'

# Node
alias mtr='meteor'

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

# VIM
alias v='vim'

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

