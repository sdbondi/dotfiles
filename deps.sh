# up to you (me) if you want to run this as a file or copy paste at your leisure

# make a code directory for dependencies
if [ ! -d ~/code ]; then
        mkdir ~/code
fi

# https://github.com/rupa/z
# z, oh how i love you
cd ~/code
git clone https://github.com/rupa/z.git
chmod +x ~/code/z/z.sh
# also consider moving over your current .z file if possible. it's painful to rebuild :)

# z binary is already referenced from .bash_profile


# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
# Autocomplete motherflippin' git branches
if [ ! -d ~/code/git-completion ]; then
        mkdir ~/code/git-completion
fi
cd ~/code/git-completion
curl https://raw.github.com/git/git/master/contrib/completion/git-completion.bash -OL
chmod -X ~/code/git-completion/git-completion.bash

# git-completion binary is already referenced from .bash_profile


# setup Vundle for Vim package management - https://github.com/gmarik/vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle


git clone https://github.com/ingydotnet/git-subrepo ~/.git-subrepo
