# NOTE: ALIASES

# Listing using LS
alias ls='ls --color=auto'
# alias ll='ls -lah --color=auto'
# alias ld='ls -d */'
# alias l.='ls -a --color=auto'

# Lising using EZA
# alias ls='eza --group-directories-first --icons=auto --color=auto'
alias ll='eza -la --icons=auto'
alias ld='eza -D --icons=auto'
alias l.='eza -a --icons=auto' 

# Tree
alias tree='tree -a'

# Safety
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Git
alias gst='git status'
alias ga='git add'
alias gau='git add -u'
alias gaa='git add --all'
alias gcm='git commit -m'
alias gcu='git commit -m "updated"'
alias gca='git commit -m "added"'
alias gcd='git commit -m "deleted"'
alias gl='git pull'
alias gp='git push'
alias gi='git init'
alias gc='git clone'
alias gbr='git branch'
alias gco='git checkout'
alias grr='git remote rm'
alias gra='git remote add'
alias glog='git log'
alias grsu='git remote set-url --add --push'
alias gr='git restore'
alias gd='git diff'
alias lg='lazygit'

#NOTE: printout Repo Details - rd
alias rd='bat .git/config'

# Terminal
alias :c='clear'
alias :q='exit'
alias :='clear && cd $HOME'
alias up='cd ..'
alias upup='cd ../..'
alias upupup='cd ../../..'

# Misc 
alias z='cd'
alias vim='nvim'
alias vimf='nvim $(fzf)'
alias svim='sudo nvim'
alias cdf='z $(fzf)'
alias mkdir='mkdir -p'

# Python Virtual Environment
if [[ -d "$HOME/.venv" ]]; then
  alias pyon='source $HOME/.venv/bin/activate'
  alias pyoff='deactivate'
fi

# NOTE: UPDATE
OS=$(uname)
if command -v apt &>/dev/null; then
  PKGMGR=apt
fi
if command -v pacman &>/dev/null; then
  PKGMGR=pacman
fi
if command -v xbps-install &>/dev/null; then
  PKGMGR=xbps
fi
if [[ $OS == 'Darwin' ]]; then
  alias update="brew update && brew upgrade --no-ask --greedy"
  alias ffi="brew formulae | fzf --multi --preview 'brew info {}' | xargs -ro brew install --formula"
  alias fci="brew casks | fzf --multi --preview 'brew info {}' | xargs -ro brew install --cask"
  alias ffr="brew list --formula | fzf --multi --preview 'brew info {}' | xargs -ro brew remove --formula"
  alias fcr="brew list --cask | fzf --multi --preview 'brew info {}' | xargs -ro brew remove --cask"
elif [[ $OS == 'Linux' ]]; then
  if [[ $PKGMGR == 'apt' ]]; then
    alias update="sudo apt update && sudo apt upgrade -y"
  elif [[ $PKGMGR == 'pacman' ]]; then
    alias update="sudo pacman -Syu --noconfirm"
    alias pmi="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
    alias pmr="pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns"
    alias yi="yay -Slq | fzf --multi --preview 'yay -Si {1}' | xargs -ro yay -S"
    alias yr="yay -Qq | fzf --multi --preview 'yay -Qi {1}' | xargs -ro yay -Rns"
  elif [[ $PKGMGR == 'xbps' ]]; then
    alias update="sudo xbps-install -ySu"
  fi
fi
