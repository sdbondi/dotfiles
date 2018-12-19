#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"

RSYNC_ARGS=()
if [[ "$1" == "--dry-run" ]];then
  RSYNC_ARGS+="--dry-run"
fi

rsync_dotfiles() {
  rsync "${RSYNC_ARGS[@]}" --exclude ".git/" --exclude ".DS_Store" --exclude "install.sh" --exclude "deps.sh" \
    --exclude "README.md" --exclude "LICENSE-MIT.txt" --exclude "install-deps.sh" -av --no-perms . ~
  source ~/.bash_profile
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  rsync_dotfiles
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    rsync_dotfiles
  fi
fi

