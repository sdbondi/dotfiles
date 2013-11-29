alias nemacs='emacs -nw'
alias semacs='sudo emacs -nw'

alias aptse='aptitude search'
alias aptin='sudo aptdcon -i'
alias aptre='sudo aptitude remove'
alias aptupd='sudo aptitude update'
alias aptupg='sudo aptitude upgrade'

alias sshmp='echo B3z10yQgE;ssh themouz@themousepotatowebsite.co.za'
alias sshhz='echo BaRd3Bj8; ssh stan@fixate.it'

alias isit='ps -e | grep -i'

# Command Enhancements
alias g='git'
alias say='espeak -v en '

# Make sure git autocomplete works for alias
complete -o default -o nospace -F _git g

# Ruby
alias irb='irb --readline -r irb/completion'
alias rii='ri -Tf ansi'

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
alias vim='vim --servername VIM'
