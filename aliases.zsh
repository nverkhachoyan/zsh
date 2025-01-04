# General Aliases
alias nv='nvim'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ws="open -na 'WebStorm.app' --args '$@'"

# Enhanced navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -lah'
alias la='ls -A'

# Docker shortcuts
alias dc='docker-compose'
alias dps='docker ps' 

# Tmux
alias tmux="tmux attach || tmux new"

# Git
alias gst="git status"
alias gcm="git commit -m"
alias ga="git add"
alias gaa="git add --all"
alias gp="git push"
