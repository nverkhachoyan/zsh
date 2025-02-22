DOTFILES="$HOME/.dotfiles"
CONFIG="$DOTFILES/.config"

export ZSH_CUSTOM="$DOTFILES/zsh/plugins"
export HOMEBREW_NO_ENV_HINTS=true

# source all zsh files
for config_file ($DOTFILES/zsh/*.zsh(N)) source $config_file

# plugins
for file in $ZSH_CUSTOM/*/*.plugin.zsh; do
    source $file
done

export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/Users/nverkhachoyan/.platformio/penv/bin:$PATH"

. "$HOME/.local/bin/env"
export PATH="/usr/local/anaconda3/bin:$PATH"
export PATH="/opt/homebrew/anaconda3/bin:$PATH"
export GHOSTTY_CONFIG_FILE="$HOME/.config/ghostty/config"

