# Set up keys bindings
[[ -n "${key[Backspace]}"     ]] && bindkey "${key[Backspace]}"     backward-delete-char
[[ -n "${key[Insert]}"        ]] && bindkey "${key[Insert]}"        overwrite-mode
[[ -n "${key[Home]}"          ]] && bindkey "${key[Home]}"          beginning-of-line
[[ -n "${key[PageUp]}"        ]] && bindkey "${key[PageUp]}"        beep
[[ -n "${key[Delete]}"        ]] && bindkey "${key[Delete]}"        delete-char
[[ -n "${key[End]}"           ]] && bindkey "${key[End]}"           end-of-line
[[ -n "${key[PageDown]}"      ]] && bindkey "${key[PageDown]}"      beep
[[ -n "${key[Up]}"            ]] && bindkey "${key[Up]}"            up-line-or-search
[[ -n "${key[Down]}"          ]] && bindkey "${key[Down]}"          down-line-or-search
[[ -n "${key[Left]}"          ]] && bindkey "${key[Left]}"          backward-char
[[ -n "${key[Right]}"         ]] && bindkey "${key[Right]}"         forward-char

[[ -n "${key[Control-Left]}"  ]] && bindkey "${key[Control-Left]}"  backward-word
[[ -n "${key[Control-Right]}" ]] && bindkey "${key[Control-Right]}" forward-word

[[ -n "${key[Control-e]}"     ]] && bindkey "${key[Control-e]}"     expand-cmd-path ## C-e for expanding path of typed command

[[ -n "${key[Space]}"         ]] && bindkey "${key[Space]}"         magic-space ## do history expansion on space

# vi-style editing key-bindings
#bindkey -v

# unbind some staff
#bindkey -r "."
[[ -n "${key[Alt-Dot]}"       ]] && bindkey "${key[Alt-Dot]}"       insert-last-word
