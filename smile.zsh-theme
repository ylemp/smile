
# ----------------------------------------------------------------------------
# Author Chris Burns
# Date 01/15/2015
# Modified version of my favorite oh-my-zsh theme cloud
# I like the cloud, but it lacked other features that wanted
# ----------------------------------------------------------------------------

PROMPT='
$fg_bold[cyan]%}${_current_dir}
☁  '
RPROMPT='%F{cyan}%D{%L:%M} %F{blue}%D{%p}%f'

local _current_dir="%{$fg[green]%}%${PWD/#$HOME/~}%b%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX="%F{yellow}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{red}*%f"
ZSH_THEME_GIT_PROMPT_CLEAN=""
~                               
