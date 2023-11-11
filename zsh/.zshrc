#
# Config file for the Z-Shell
#

# Prompt
PS1='%F{3}%n@%m%F{3}%F{7}:%F{7}%F{2}%~%F{2} %F{1}$%F{1} %F{reset_color}%F{reset_color}'

# Git Prompt
source $HOME/.config/zsh/zshgit

# Completion 
autoload -U compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' # Makes the completion case-insensitive
zstyle ':completion:*' menu select # Displays a menu for choosing the desired file/directory
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# History in cache directory
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Aliases
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias wget="wget --hsts-file="$XDG_CACHE_HOME/wget-hsts""
alias vi="nvim"

# Vi Mode
bindkey -v
export KEYTIMEOUT=100
