#!/bin/sh

SCRIPT_DIR="$(dirname "$(realpath "$0")")"

# antigen
if [[ ! -f ~/.antigen.zsh ]]; then
  if [ -x "$(command -v wget)" ]; then
    wget -q -O ~/.antigen.zsh git.io/antigen
  elif [ -x "$(command -v curl)" ]; then
    curl -L git.io/antigen > ~/.antigen.zsh
  else
    echo "Could not install antigen. Install wget or curl first"
    exit 1
  fi
fi

# fzf
if [[ ! -d ~/.fzf ]]; then
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install --completion --key-bindings --no-update-rc
fi

# zshrc
if [[ -f ~/.zshrc ]]; then
  mv ~/.zshrc ~/.zshrc.old
fi
cp "${SCRIPT_DIR}/zshrc" ~/.zshrc

