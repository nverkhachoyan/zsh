local soft_red="%F{203}"
local soft_purple="%F{147}"
local steel_blue="%F{147}"
local reset_color="%f"

local user_symbol='%(!.#.$)'
local return_code="${soft_red}%(?..%? ↵%f)"
local user_host="${soft_purple}%n@%m${reset_color}"
local current_dir="${steel_blue}%~${reset_color}"

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%b'
git_prompt_info="${steel_blue}$vcs_info_msg_0_${reset_color}"

PROMPT="╭${current_dir} ${git_prompt_info}
╰${user_symbol} "
