# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_RUNTIME_DIR="/run/user/$(id -u)"

# SHELL
export EDITOR='nvim'
export VISUAL='nvim'
export LC_ALL=en_AU.UTF-8
export LANG=en_AU.UTF-8
export LANGUAGE=en_AU:en
export TERM=xterm-256color
export COLORTERM=truecolor
export TERMINAL=ghostty
export BROWSER=brave-origin
# FIX: Make sure GNUGPG is installed
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GPG_TTY=$(tty)
# FIX: Make sure LESS is installed
export LESSHISTFILE="$XDG_STATE_HOME"/less/history
export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo
export STARSHIP_CONFIG="$HOME"/.config/starship/starship.toml

# PATHS
# Adds ~/bin
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Adds ~/.local/bin
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
