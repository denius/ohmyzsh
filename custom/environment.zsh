
# export LC_ALL=

export PATH="$HOME/.local/bin:$HOME/bin:$PATH"


if [ -d "/opt/tecplot/360ex_2022r2/bin" ] ; then
    export PATH="$PATH:/opt/tecplot/360ex_2022r2/bin"
fi

# if [ -d "$HOME/tmp/paraview_build/bin" -a -x "$HOME/tmp/paraview_build/bin/paraview" ] ; then
#     export PATH="$PATH:$HOME/tmp/paraview_build/bin"
# fi
# PVPATH="/opt/paraview/ParaView-5.12.0-MPI-Linux-Python3.10-x86_64/bin"
# PVPATH="/opt/paraview/ParaView-5.13.1-MPI-Linux-Python3.10-x86_64/bin"
PVPATH="/opt/paraview/ParaView-5.13.3-MPI-Linux-Python3.10-x86_64/bin"
if [ -d "$PVPATH" ] ; then
    export PATH="$PATH:$PVPATH"
fi

if [ -d "/opt/Fluent.Inc/bin" ] ; then
    export PATH="$PATH:/opt/Fluent.Inc/bin"
fi

if [ -d "$HOME/.cargo/bin" ] ; then
    export PATH="$PATH:$HOME/.cargo/bin"
fi

if [ -d "$HOME/.gem/ruby/2.7.0/bin" ] ; then
    export PATH="$PATH:$HOME/.gem/ruby/2.7.0/bin"
fi

RGPATH="$(find /home/linuxbrew/.linuxbrew/Cellar/ripgrep -type d -regextype sed -regex '.*[0-9]\+\.[0-9]\+\.[0-9]\+')/bin"
if [ -d "$RGPATH" ] ; then
    export PATH="$RGPATH:$PATH"
fi

LUAPATH="$(find /home/linuxbrew/.linuxbrew/Cellar/lua -type d -regextype sed -regex '.*[0-9]\+\.[0-9]\+\.[0-9]\+')/bin"
if [ -d "$LUAPATH" ] ; then
    export PATH="$LUAPATH:$PATH"
fi

LUAROCKSPATH="$(find /home/linuxbrew/.linuxbrew/Cellar/luarocks -type d -regextype sed -regex '.*[0-9]\+\.[0-9]\+\.[0-9]\+')/bin"
if [ -d "$LUAROCKSPATH" ] ; then
    export PATH="$LUAROCKSPATH:$PATH"
fi

PANDOCPATH="$(find /home/linuxbrew/.linuxbrew/Cellar/pandoc -type d -regextype sed -regex '.*[0-9]\+\.[0-9]\+\.[0-9]\+')/bin"
if [ -d "$PANDOCPATH" ] ; then
    export PATH="$PANDOCPATH:$PATH"
fi

if [ -d "/home/linuxbrew/.linuxbrew/bin" ] ; then
    export PATH="$PATH:/home/linuxbrew/.linuxbrew/bin"
    export MANPATH="$MANPATH:/home/linuxbrew/.linuxbrew/share/man"
    export INFOPATH="$INFOPATH:/home/linuxbrew/.linuxbrew/share/info"
fi

if [ -d "$HOME/go/bin" ] ; then
    export PATH="$PATH:$HOME/go/bin"
fi
if [ -d "$HOME/.julia/bin" ] ; then
    export PATH="$PATH:$HOME/.julia/bin"
fi

if [ -d "/usr/local/cuda/bin" ] ; then
    export PATH="/usr/local/cuda/bin:$PATH"
    # don't export lib path because julia error:
    # │  ┌ Warning: CUDA runtime library libnvJitLink.so.12 was loaded from a system path. This may cause errors.
    # │  │ Ensure that you have not set the LD_LIBRARY_PATH environment variable, or that it does not contain paths to CUDA libraries.
    # │  └ @ CUDA ~/.julia/packages/CUDA/rXson/src/initialization.jl:189
    # export LD_LIBRARY_PATH="/usr/local/cuda/lib64:$PATH"
fi


if [ -d "$HOME/var/aider" ] ; then
    # via https://stackoverflow.com/a/16296567/16881249
    export PYTHONPATH="$HOME/var/aider${:+$PYTHONPATH:PYTHONPATH}"
    # export PYTHONPATH="${PYTHONPATH:+$PYTHONPATH:}$HOME/var/aider"
fi

export OPENBLAS_NUM_THREADS=14
#export OPENBLAS_NUM_THREADS=1
#export OMP_NUM_THREADS=14
export NUMBA_NUM_THREADS=4

export JULIA_NUM_THREADS=14
# deprecated export JULIA_CUDA_USE_BINARYBUILDER=false
# export JULIA_SHELL="/bin/bash"
export JULIA_SHELL="/bin/zsh"

# for bash aliases in Julia, like ~/.zshenv
export BASH_ENV="$HOME/.bashenv"


ulimit -n 65536
#ulimit -n 4096

#export MC_SKIN=$HOME/.config/mc/mc-solarized-skin/solarized.ini
export MC_SKIN=$HOME/.config/mc/mc-solarized-mostly-skin/solarized-mostly.ini
export BAT_THEME="TwoDark"
export ZSH_COLORIZE_STYLE="material"
# export ZSH_COLORIZE_STYLE="solarized-dark"
# export ZSH_COLORIZE_STYLE="nord-darker"

export EDITOR=nvim

# export VISUAL env var to use remote access to nvim from inside of that vim
# https://discourse.julialang.org/t/neovim-terminal-and-edit/99822/6
if [ -n "$NVIM" ]; then
    export VISUAL="nvr -cc split --remote-wait +'set bufhidden=wipe'"
else
    export VISUAL="nvim"
    #export VISUAL="vim"
fi


export RIPGREP_CONFIG_PATH=$HOME/.config/ripgreprc

# colorize less and man
#export LESSOPEN="|/home/linuxbrew/.linuxbrew/bin/lesspipe.sh %s"
# from https://github.com/CoeJoder/lessfilter-pygmentize#3-configure-environment-variables
# sets LESSOPEN and LESSCLOSE variables
eval "$(SHELL=/bin/bash lesspipe.sh)"
# interpret color characters
export LESS='-R'
# to list available styles: `pygmentize -L styles`
export PYGMENTIZE_STYLE='material'
# optional
#alias ls='ls --color=always'
alias ls='ls --color=auto'
alias grep='grep --color=always'



#if [ "$TERM" = "xterm" ] ; then
#    if [ -z "$COLORTERM" ] ; then
#        if [ -z "$XTERM_VERSION" ] ; then
#            echo "Warning: Terminal wrongly calling itself 'xterm'."
#        else
#            case "$XTERM_VERSION" in
#            "XTerm(256)") TERM="xterm-256color" ;;
#            "XTerm(88)") TERM="xterm-88color" ;;
#            "XTerm") ;;
#            *)
#                echo "Warning: Unrecognized XTERM_VERSION: $XTERM_VERSION"
#                ;;
#            esac
#        fi
#    else
#        case "$COLORTERM" in
#            gnome-terminal)
#                # Those crafty Gnome folks require you to check COLORTERM,
#                # but don't allow you to just *favor* the setting over TERM.
#                # Instead you need to compare it and perform some guesses
#                # based upon the value. This is, perhaps, too simplistic.
#                #TERM="gnome-256color"
#                TERM="xterm-256color"
#                ;;
#            *)
#                echo "Warning: Unrecognized COLORTERM: $COLORTERM"
#                ;;
#        esac
#    fi
#fi
#
#export TERM
