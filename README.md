# my-zsh-prompt

A beautiful zsh prompt with tons of useful features.

![screenshot](screenshot.png)

Includes:
* antigen
* powerlevel10k
* fzf
* autosuggestions
* syntax highlighting
* and more

## Installation

Install `zsh` using your systems package manager, e.g. on ubuntu/Debian:

    $ sudo apt-get install zsh

Clone the repository and run the setup script:

    $ git clone https://github.com/phausamann/my-zsh-prompt
    $ zsh my-zsh-prompt/setup.sh

## Usage

From your current shell, run:

    $ zsh

If you like what you see, you can make zsh your default shell:

    $ chsh -s $(which zsh)

The change will take effect on the next login.

## Keyboard shortcuts

* `CTRL+T` for fuzzy path completion (If you have part of the path already typed, type `**` and hit `Tab`)
* `CTRL+R` for fuzzy history search
* `CTRL+Space` for completing auto suggestions
* `CTRL+Left/Right` for completing auto suggestions word by word

## Customization

Edit `~/.zshrc` to customize the prompt and features.

