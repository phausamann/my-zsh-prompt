#!/bin/sh

SCRIPT_DIR="$(dirname "$(realpath "$0")")"

# antigen
if [[ ! -f ~/.antigen.zsh ]]; then
  echo "Installing antigen..."
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
  echo "Installing fzf..."
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install --completion --key-bindings --no-update-rc
fi

# zshrc
if [[ -f ~/.zshrc ]]; then
  echo "Backing up existing $HOME/.zshrc to $HOME/.zshrc.old..."
  if [[ -f ~/.zshrc.old ]]; then
    echo "$HOME/.zshrc.old exists, will not overwrite"
    exit 1
  fi
  mv ~/.zshrc ~/.zshrc.old
fi
cp "${SCRIPT_DIR}/zshrc" ~/.zshrc

