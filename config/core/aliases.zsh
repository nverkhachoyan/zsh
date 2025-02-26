alias nv='nvim'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/.git --work-tree=$HOME'
alias ws="open -na 'WebStorm.app' --args '$@'"
alias ls="eza"
alias lt="eza --tree --level $1"

alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -lah'
alias la='ls -A'

alias dc='docker-compose'
alias dps='docker ps' 

alias tmux="tmux attach || tmux new"

alias gst="git status"
alias gcm="git commit -m"
alias ga="git add"
alias gaa="git add --all"
alias gp="git push"

alias dev="cd ~/Projects/"
