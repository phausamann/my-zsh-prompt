#!/bin/bash

SCRIPT_DIR="$(dirname "$(realpath "$0")")"

# zsh
sudo apt-get install -y zsh

# antigen
if [[ ! -f ~/.antigen.zsh ]]; then
  wget -q -O ~/.antigen.zsh git.io/antigen
fi

# fzf
if [[ ! -f ~/.fzf ]]; then
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install --completion --key-bindings --no-update-rc
fi

# zshrc
if [[ -f ~/.zshrc ]]; then
  mv ~/.zshrc ~/.zshrc.old
fi
cp "${SCRIPT_DIR}/zshrc" ~

