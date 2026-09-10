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


# ---------------------------------------------------------------------------
# neovim (config is .config/nvim/init.lua, based on github.com/jonhoo/configs)
# ---------------------------------------------------------------------------
# needs nvim >= 0.11; distro packages are usually far too old, so install the
# official static build into ~/.local/nvim
mkdir -p ~/.local/nvim ~/.local/bin
curl -sL https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz \
        | tar -xz -C ~/.local/nvim --strip-components=1
ln -sf ~/.local/nvim/bin/nvim ~/.local/bin/nvim

# fzf (^p / <leader>; file + buffer pickers) -- distro version is too old too
FZF_V=$(curl -sL https://api.github.com/repos/junegunn/fzf/releases/latest \
        | grep -m1 '"tag_name"' | sed 's/.*"v\{0,1\}\([0-9.]*\)".*/\1/')
curl -sL "https://github.com/junegunn/fzf/releases/download/v$FZF_V/fzf-$FZF_V-linux_amd64.tar.gz" \
        | tar -xz -C ~/.local/bin fzf

# fd is packaged as fdfind on debian/ubuntu; nvim config expects `fd`
sudo apt install -y fd-find ripgrep xclip
ln -sf "$(command -v fdfind)" ~/.local/bin/fd

# ranks ^p results by proximity to the current file
cargo install proximity-sort

# language servers (add as needed)
rustup component add rust-analyzer
# npm i -g bash-language-server ; pipx install ruff

# plugins bootstrap themselves via lazy.nvim on first launch:
nvim --headless '+Lazy! sync' +qa
