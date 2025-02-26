#!/bin/zsh

export DOTFILES="$HOME/.dotfiles"
export ZSH_CONFIG="$DOTFILES/zsh/config"

for config in env paths shell theme aliases plugins; do
    source "$ZSH_CONFIG/core/$config.zsh"
done

# Local config if exists
[[ -f "$HOME/.local/bin/env" ]] && source "$HOME/.local/bin/env"


