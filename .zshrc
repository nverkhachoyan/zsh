DOTFILES="$HOME/.dotfiles"
CONFIG="$DOTFILES/.config"
export ZSH_CUSTOM="$DOTFILES/zsh/custom"

# Source all zsh configurations
for config_file (~/.dotfiles/zsh/*.zsh(N)) source $config_file

# Environment Variables
export HOMEBREW_NO_ENV_HINTS=true

# Load Project Environment Functions
for file in $HOME/.dotfiles/projects/*.zsh(N); do
    source "$file"
done

# Plugins
for file in $ZSH_CUSTOM/plugins/*/*.plugin.zsh; do
    echo "Init plugin: $file"
    source $file
done
