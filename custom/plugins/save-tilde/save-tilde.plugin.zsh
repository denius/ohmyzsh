# by http://superuser.com/questions/344128/disable-users-from-completing-after-a-in-zsh

_bangfalse_tilde () {
  # The standard _tilde function with users removed
  [[ -n "$compstate[quote]" ]] && return 1
  local expl suf ret=1
  if [[ "$SUFFIX" = */* ]]; then
    ISUFFIX="/${SUFFIX#*/}$ISUFFIX"
    SUFFIX="${SUFFIX%%/*}"
    suf=(-S '')
  else
    suf=(-qS/)
  fi
  _tags users named-directories directory-stack
  while _tags; do
    _requested named-directories expl 'named directory' compadd "$suf[@]" "$@" -k nameddirs && ret=0
    _requested directory-stack && _directory_stack "$suf[@]" && ret=0
  done
  (( ret )) || return 0
}
compdef _bangfalse_tilde -tilde-
