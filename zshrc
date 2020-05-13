# antigen
source "$HOME/.antigen.zsh"

# fzf
export FZF_BASE=$HOME/.fzf

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle fzf
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle command-not-found

# theme
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply

# powerlevel9k/10k
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context anaconda virtualenv dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs time)
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=" → "
POWERLEVEL9K_ANACONDA_BACKGROUND=chartreuse4
POWERLEVEL9K_ANACONDA_LEFT_DELIMITER=""
POWERLEVEL9K_ANACONDA_RIGHT_DELIMITER=""
POWERLEVEL9K_ANACONDA_SHOW_PYTHON_VERSION=false
POWERLEVEL9K_VIRTUALENV_BACKGROUND=mediumorchid
POWERLEVEL9K_VIRTUALENV_LEFT_DELIMITER=""
POWERLEVEL9K_VIRTUALENV_RIGHT_DELIMITER=""
POWERLEVEL9K_VIRTUALENV_SHOW_PYTHON_VERSION=false
POWERLEVEL9K_PYTHON_ICON=""
POWERLEVEL9K_PYTHON_ICON=""

# get rid of right indent
ZLE_RPROMPT_INDENT=0

# autosuggest
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'
bindkey '^ ' autosuggest-accept
