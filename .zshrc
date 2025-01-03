DOTFILES="$HOME/.dotfiles"
CONFIG="$DOTFILES/.config"
export ZSH_CUSTOM="$DOTFILES/zsh/custom"
export HOMEBREW_NO_ENV_HINTS=true

# Editor Configuration
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi 

# Source all zsh configurations
for config_file (~/.dotfiles/zsh/*.zsh(N)) source $config_file

# Plugins
for file in $ZSH_CUSTOM/plugins/*/*.plugin.zsh; do
    source $file
done

source "$ZSH_CUSTOM/themes/thematic.zsh"
