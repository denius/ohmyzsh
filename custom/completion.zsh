# Search path for the cd command
if [[ `hostname` == baby07 ]]; then
	cdpath=(~ /mnt/data)
#	cdpath=(~ /mnt/data ~/projects)
#	cdpath=(~ /mnt/data/telnov/ISS /mnt/data/telnov/projects ~/projects)
else
	cdpath=(~ /mnt/data)
#	cdpath=(~ /mnt/data ~/projects)
fi

# hosts
hosts=("$hosts[@]" aero.spbstu.ru)
zstyle ':completion:*:hosts' hosts $hosts

# Completion Styles

# list of completers to use
zstyle ':completion:*::::' completer _expand _complete _prefix _match _approximate _ignored _history
#zstyle ':completion:*::::' completer _expand _complete _prefix _approximate _ignored _history

# allow one error for every three characters typed in approximate completer
zstyle -e ':completion:*:approximate:*' max-errors \
    'reply=( $(( ($#PREFIX+$#SUFFIX)/1 )) numeric )'  # digit is the number of errors allowed
    
# insert all expansions for expand completer
zstyle ':completion:*:expand:*' tag-order all-expansions

# formatting and messages
#zstyle ':completion:*' verbose yes
#zstyle ':completion:*:descriptions' format '%B%d%b'
#zstyle ':completion:*:messages' format '%d'
#zstyle ':completion:*:warnings' format 'No matches for: %d'
#zstyle ':completion:*:corrections' format '%B%d (errors: %e)%b'
#zstyle ':completion:*' group-name ''

# offer indexes before parameters in subscripts
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters

# Filename suffixes to ignore during completion (except after rm command)
zstyle ':completion:*:*:(^rm):*:*files' ignored-patterns '*?.o' '*?~' '*?.old'  '*?.orig'
# Dirs to ignore during completion (except after rm command)
zstyle ':completion:*:*:(^rm):*:*directories' ignored-patterns '*~'

# ignore completion functions (until the _ignored completer)
zstyle ':completion:*:functions' ignored-patterns '_*'

# process names for killall and so on
zstyle ':completion:*:processes-names' command 'ps -e -o comm='

# настройки для sudo
#zstyle ':completion:*:*:sudo-kill:*' command 'ps -xf'
#zstyle ':completion:*:*:sudo-killall:*' command 'ps hoa command'

# ... unless we really want to.
zstyle '*' single-ignored show

