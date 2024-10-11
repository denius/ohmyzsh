# https://github.com/blinks zsh theme

ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[green]%}+"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_bold[blue]%}!"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[red]%}-"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg_bold[magenta]%}>"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[yellow]%}#"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[cyan]%}?"

#ZSH_THEME_GIT_PROMPT_PREFIX=" [%{%B%F{blue}%}"
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{%f%k%b%K{black}%B%F{green}%}]"
#ZSH_THEME_GIT_PROMPT_DIRTY=" %{%F{red}%}*%{%f%k%b%}"
#ZSH_THEME_GIT_PROMPT_CLEAN=""

# define your colors here
[[ `hostname` != "baby07"  && `hostname` != "the-pigs" ]] && host_color="green"
#local path_color='green'; [ $UID -eq 0 ] && path_color='red'
local path_color='blue'; [ $UID -eq 0 ] && path_color='red'
date_color="white"
end_color="black"

#host="%{$fg[$host_color]%}%n@%m "
#cpath="%B%{$fg[$path_color]%}%29<...<%~%b%<<"
#end="%{$fg[$end_color]%}>%{$reset_color%} "

host="%{$fg[$host_color]%}%n@%m "
cpath="%B%{$fg[$path_color]%}%29<...<%~%b%<<"
end="%{$fg[$end_color]%}> "
#local gitst="%{%B%F{green}%}$(git_prompt_info)"

PROMPT="$host${cpath} $(git_prompt_info) $end"

#PROMPT='%{%f%k%b%}
#%{%K{black}%B%F{green}%}%n%{%B%F{blue}%}@%{%B%F{cyan}%}%m%{%B%F{green}%} %{%b%F{yellow}%K{black}%}%~%{%B%F{green}%}$(git_prompt_info)%{%f%k%b%}\
#%{%K{black}%} %#%{%f%k%b%} '

local return_status="%{$fg_bold[red]%}%(?..%?)%{$reset_color%}"
RPROMPT="${return_status}%{$reset_color%}"
