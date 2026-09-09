# NOTE: STARTUP CHECKS

# If not running interactively, don't do anything!
[[ $- != *i* ]] && return

# If running in tty execute bash
if [[ "$(tty)" == /dev/tty* ]]; then
  exec bash 
fi

# NOTE: SOURCE PLUGINS SETUP AND INSTALL
source "$ZDOTDIR/plugins.zsh"

# NOTE: HISTORY
HISTSIZE=100000
HISTFILE='$XDG_STATE_HOME'/zsh/history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# NOTE: SHELL BEHAVIOUR
setopt nobeep
setopt numeric_glob_sort

# NOTE: COMPLETION
autoload -Uz compinit && compinit
zinit cdreplay -q
# Completion Styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
# FIX: Update for EZA
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# NOTE: SOURCE KEY BINDINGS
source "$ZDOTDIR/bindings.zsh"

# NOTE: SOURCE FZF SETUP AND CONFIGURATION
source "$ZDOTDIR/fzf.zsh"

# NOTE: SOURCE ALIASES
source "$ZDOTDIR/aliases.zsh"

# NOTE: SHELL INTEGRATIONS
eval "$(zoxide init --cmd cd zsh)"
eval "$(starship init zsh)"

# NOTE: Create Required directories

# Create undodir for Neovim
undodir="$HOME/.cache/undodir"
if [ ! -d "$undodir" ]; then
  mkdir "$undodir"
fi
# Create zsh cache directory
zshcachedir="$XDG_CACHE_HOME/zsh"
if [ ! -d "$zshcachedir" ]; then
  mkdir -p "$zshcachedir"
fi
# Create zsh state directory
zshstatedir="$XDG_STATE_HOME/zsh"
if [ ! -d "$zshstatedir" ]; then
  mkdir -p "$zshstatedir"
fi
# Create less state directory
lessstatedir="$XDG_STATE_HOME/less"
if [ ! -d "$lessstatedir" ]; then
  mkdir -p "$lessstatedir"
fi
# Create gnupg home directory
gnupghomedir="$XDG_DATA_HOME/gnupg"
if [ ! -d "$gnupghomedir" ]; then
  mkdir -p "$gnupghomedir"
fi
