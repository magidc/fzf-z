fzf-z-widget() {
  setopt localoptions pipefail no_aliases 2> /dev/null
  local dir="$(eval "sort -t'|' -nrk3 ${ZSHZ_DATA:-$HOME/.z} | awk -F '|' '{print \$1}'" | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} --reverse --bind=ctrl-z:ignore ${FZF_DEFAULT_OPTS-}" $(__fzfcmd) +m)"
  if [[ -z "$dir" ]]; then
    zle redisplay
    return 0
  fi
  zle push-line # Clear buffer. Auto-restored on next prompt.
  BUFFER="builtin cd -- ${(q)dir}"
  zle accept-line
  local ret=$?
  unset dir # ensure this doesn't end up appearing in prompt expansion
  zle reset-prompt
  return $ret
}
zle     -N             fzf-z-widget
bindkey -M emacs '\ez' fzf-z-widget
bindkey -M vicmd '\ez' fzf-z-widget
bindkey -M viins '\ez' fzf-z-widget

