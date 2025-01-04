local user_symbol='%(!.#.$)'
local reset_color="%f"
local return_code="%F{203}%(?..%? ↵%f)"  # Soft red for errors
local user_host="%F{147}%n@%m%f"         # Soft purple for user/host
local current_dir="%F{147}%~%f"          # Steel blue for directory

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%b'
git_prompt_info='%F{074}$vcs_info_msg_0_%f'

PROMPT="╭${current_dir} ${git_prompt_info}
╰${user_symbol} "

#     PROMPT="╭${user_host} ${current_dir} $(git_prompt_info)
# ╰${user_symbol} "
#
#
# decent blue 074
