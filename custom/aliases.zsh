# Basic directory operations
#unalias "../.."
unalias "..."

# Super user
unalias _

# by git pluging
#unalias g
#unalias gp
#unalias gl
#unalias gm

alias gpff='git pull --ff-only'
alias gl='git log'
alias glp='git log -p'
alias gtk='gitk --all'

#unalias ss

#unalias afind

# alias ag='ag --ignore="*.mtx" --smart-case'


# some more aliases
alias lsl='ls -l'
alias lsa='ls -A'
alias ll='ls -lF'
alias lh='ls -lh'
alias la='ls -A'
#alias l='ls -F'
alias l1='ls -1'
alias l='ls -lrtF'
alias lrt='ls -lrt'
#alias less='less -i'
alias less=$PAGER
#alias grep=egrep
#alias df='LANGUAGE=en_US.UTF-8 df'
#alias mc='LANGUAGE=en_US.UTF-8 mc'
#alias hgrep='history|ag'
alias hG='history|grep -i '
#alias HG='history|grep -i '
alias HG='history | rg -i '
# alias HJ="ag --nonumbers \"^[\t]\" $HOME/.julia/logs/repl_history.jl | sed \"s/^[\t]//\" -"
alias rgp='rg --passthru '
alias lsof='lsof -w'
alias psl='ps -efw'
alias fd='fdfind '
unalias ap
#alias a='LANGUAGE=en sudo aptitude'
alias a='sudo aptitude'
alias as='aptitude search'
alias ashow='aptitude show'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias vimdiff='nvim -d'
alias c='cat'
alias xclip='xclip -selection c'
alias da='/usr/bin/deadbeef --queue '
alias add='/usr/bin/deadbeef --queue '
alias mo='mogrify -trim -resize 100% -bordercolor white -border 8x8 +repage '

alias gvim='gvim 2>/dev/null '
alias jedit='jedit 1>/dev/null 2>&1 '
alias meld='meld 1>/dev/null 2>&1 '
alias nautilus='nautilus 1>/dev/null 2>&1 '

alias s1='ssh s1'
alias s2='ssh s2'
alias s3='ssh s3'
alias n1='ssh n1'
alias n2='ssh n2'
alias n3='ssh n3'
alias n4='ssh n4'
alias n5='ssh n5'
alias n6='ssh n6'
alias n7='ssh n7'
alias n8='ssh n8'
alias n9='ssh n9'
alias n10='ssh n10'
alias n11='ssh n11'
alias n12='ssh n12'
alias n13='ssh n13'
alias n14='ssh n14'
alias n15='ssh n15'
alias u1='ssh u1'
alias u2='ssh u2'
alias baby7='ssh baby7'
alias b7='ssh baby7'

#if [[ -f /opt/Fluent.Inc/bin/gambit ]]; then
#    #alias gambit="env LIBGL_DRIVERS_PATH=/usr/lib /opt/Fluent.Inc/bin/gambit"
#    #alias gambit="env LIBGL_DRIVERS_PATH=/usr/lib/nvidia-331-updates /opt/Fluent.Inc/bin/gambit -device opengl"
#    alias gambit="LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/lib/nvidia-331-updates /opt/Fluent.Inc/bin/gambit"
#fi
#if [[ -f /opt/tecplot-2010R1/bin/tec360 ]]; then
#    alias tec360="env XLIB_SKIP_ARGB_VISUALS=1 /opt/tecplot-2010R1/bin/tec360"
#fi

# colouring
if [ -f /usr/bin/grc ]; then
    alias ping="grc --colour=auto ping"
    alias traceroute="grc --colour=auto traceroute"
#    alias make="grc --colour=auto make"
    alias diff="grc --colour=auto diff"
    alias cvs="grc --colour=auto cvs"
    alias netstat="grc --colour=auto netstat"
fi

#alias ccat='pygmentize -g'
##alias ccat='pygmentize -g -O style=colorful,linenos=1'

#alias history='fc -l 1 -1'
alias history='fc -il 1'
alias h=history

alias -s {png,jpg,svg,ico,tif,tiff}='eog 1>/dev/null 2>&1 '
alias -s {pdf,ps,djv,djvu}='evince 1>/dev/null 2>&1 '
#alias -s {pdf,ps,djv,djvu}='evince $(echo $1) '
#alias -s {pdf,ps,djv,djvu}='nohup evince &'
alias -s fb2=fbless
alias -s {odp,otp,ppt,pptx}=loimpress
alias -s {ods,ots,xls}=localc
alias -s {odt,ott,doc,docx}=lowriter
#alias -s doc=catdoc
alias -s txt=less
# расширение для определение браузера (в терминале запускает консольный браузер)
autoload -U pick-web-browser
alias -s {html,htm,xhtml,sgml,mht,mhtml}=pick-web-browser
alias -s mtx='matview -abs -A -Z white -F 1>/dev/null '
alias -s FCStd=freecad
alias -s lay=tec360
alias -s dbs=gambit
alias -s gp=gnuplot

alias xml=xmlstarlet

alias ols='ollama list | tail -n+2 | sort'
alias olss='ollama list | tail -n+2 | sort -k3,3 -g'
alias olsr='ollama list | tail -n+2 | tac'
alias ops='ollama ps'

# Global aliases -- These do not have to be
# at the beginning of the command line.
alias -g G='|rg'
alias -g Z='|fzf'
alias -g M='|most'
alias -g H='|head'
alias -g T='|tail'
alias -g L='|less'
alias -g S='|sort'
alias -g W='|wc'
alias -g X='|xargs'
alias -g N='1>/dev/null 2>&1'
alias -g A='2>&1'
alias -g AL='2>&1 |less'

