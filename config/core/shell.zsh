export EDITOR='nvim'
[[ -n $SSH_CONNECTION ]] && export EDITOR='vim'

bindkey -e

bindkey '^[[A' up-line-or-history
bindkey '^[[B' down-line-or-history
bindkey '^R' history-incremental-search-backward
bindkey '^L' clear-screen                     

# FZF
if (( $+commands[fzf] )); then
    source <(fzf --zsh)
fi

# Lazy loading for dev tools
nvm() {
    unset -f nvm
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    nvm "$@"
}

deno() {
    unset -f deno
    [ -f "$HOME/.deno/env" ] && source "$HOME/.deno/env"
    deno "$@"
}

cargo() {
    unset -f cargo
    [ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"
    cargo "$@"
}

# Completion system
if [ -s "$NVM_DIR/bash_completion" ]; then
    autoload -U +X compinit && compinit
    autoload -U +X bashcompinit && bashcompinit
fi 
