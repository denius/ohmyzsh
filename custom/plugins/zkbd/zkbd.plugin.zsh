# Load zkbd module
autoload -U zkbd

[[ -z "$ZDOTDIR" ]] && ZDOTDIR="$ZSH/custom"
#[[ -z "$ZDOTDIR" ]] && ZDOTDIR="$HOME"
[[ ! -d "$ZSH/custom/zkbd" ]] && mkdir -p "$ZSH/custom/zkbd"
if [[ ! -f "$ZSH/custom/zkbd/$TERM-${DISPLAY:-$VENDOR-$OSTYPE}" ]]; then
    mkdir -p "$ZSH/custom/.zkbd" && zkbd
    mv "$ZSH/custom/.zkbd/$TERM-${DISPLAY:-$VENDOR-$OSTYPE}" "$ZSH/custom/zkbd"
    rm -rf "$ZSH/custom/.zkbd"
fi
source "$ZSH/custom/zkbd/$TERM-${DISPLAY:-$VENDOR-$OSTYPE}"

