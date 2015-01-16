
# ----------------------------------------------------------------------------
# Author Chris Burns
# Date 01/15/2015
# Modified version of my favorite oh-my-zsh theme cloud
# I like the cloud, but it lacked other features that wanted
# ----------------------------------------------------------------------------

PROMPT='
$(_user_host)%{$fg_bold[cyan]%}${_current_dir} 
☁  '
RPROMPT='%F{cyan}%D{%L:%M} %F{blue}%D{%p}%f'

local _current_dir="%{$fg[green]%}%3~%{$reset_color%} "

function _user_host() {
  if [[ -n $SSH_CONNECTION ]]; then
    me="%n@%m"
  elif [[ $LOGNAME != $USER ]]; then
    me="%n"
  fi
  if [[ -n $me ]]; then
    echo "%{$fg[cyan]%}$me%{$reset_color%}:"
  fi
}

#Not being used
function hg_prompt_info {
    hg prompt --angle-brackets "\
<%{$fg_bold[blue]%}hg:(%{$fg_bold[red]%}<branch>><:<tags|, >%{$fg_bold[blue]%})>\
%{$fg[yellow]%}<status|modified|unknown><update>\
<patches: <patches|join( → )>>%{$reset_color%}" 2>/dev/null
}

ZSH_THEME_GIT_PROMPT_PREFIX="%F{yellow}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{red}*%f"
ZSH_THEME_GIT_PROMPT_CLEAN=""
