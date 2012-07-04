# flyingdragon custom zsh theme
# based on sporty_256

# %m on os x (at least thru os x snow leopard) may expand to ip or dynamic host
# address, we should use the computer name from sys pref if possible
function box_name {
    scutil --get ComputerName 2>/dev/null || hostname -s
}

PROMPT='%F{208}%B[%1~%b%f$(git_prompt_info)%F{208}%B]%b%f %{$reset_color%}'
RPROMPT='%B%n%{$fg_bold[white]%}@$(box_name)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" ("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}%B✗%b%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}%B√%b%{$reset_color%}"

ZSH_THEME_TERM_TITLE_IDLE="%n@$(box_name): %~"
