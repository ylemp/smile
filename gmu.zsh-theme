PROMPT='
$(_user_host)${_current_dir} $(hg_prompt_info)
GMU Robotics (╯°□°）╯︵ ┻━┻ '
RPROMPT='%F{green}%D{%L:%M} %F{yellow}%D{%p}%f'


local _current_dir="%{$fg[green]%}%3~%{$reset_color%} "
local _return_status="%{$fg[red]%}%(?..⍉)%{$reset_color%}"
local _hist_no="%{$fg[grey]%}%h%{$reset_color%}"

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
