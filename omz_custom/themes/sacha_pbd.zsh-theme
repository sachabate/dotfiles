local nl=$'\n'

local user='%F{magenta}%n%F{8}%B@%b%f'
local pwd='%F{blue}%~%f'
local return_code='%(?..%F{red}│%?%f${nl})'
local input='%F{%(?.yellow.red)}%B╰─%b%f '
local git_branch='$(git_prompt_status)%f$(git_prompt_info)%f'

ZSH_THEME_RVM_PROMPT_OPTIONS="i v g"
ZSH_THEME_GIT_PROMPT_PREFIX="%F{8}‹%F{green}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{8}›%f"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%F{green} "
ZSH_THEME_GIT_PROMPT_MODIFIED="%F{blue} "
ZSH_THEME_GIT_PROMPT_DELETED="%F{red} "
ZSH_THEME_GIT_PROMPT_RENAMED="%F{magenta} "
ZSH_THEME_GIT_PROMPT_UNMERGED="%F{yellow}󰾞 "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%F{yellow} "

ZSH_THEME_RUBY_PROMPT_PREFIX="%F{green}‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="›%f"

PROMPT="${user} ${pwd}
${return_code}${input}"
RPROMPT="${git_branch}"
