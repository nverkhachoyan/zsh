local user_symbol='%(!.#.$)'
local reset_color="%f"
local return_code="%F{203}%(?..%? ↵%f)"  # Soft red for errors
local user_host="%F{147}%n@%m%f"         # Soft purple for user/host
local current_dir="%F{147}%~%f"          # Steel blue for directory

PROMPT="╭${current_dir}
╰${user_symbol} "

#     PROMPT="╭${user_host} ${current_dir} $(git_prompt_info)
# ╰${user_symbol} "
#
#
# decent blue 074
