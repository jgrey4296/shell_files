#------------------------------------------------------------
#switch whereis with which
alias whereis="which"


#PERSONAL ALIASES:
alias master="emacs ~/notes/master.org"

alias pServer="python -m http.server 8888 &"
alias qpServer="(python -m http.server 8888 > /dev/null 2>&1) & && (echo 'Running Quiet Server')"
alias qpoServer="((python -m http.server 8888 > /dev/null 2>&1) &) && (echo 'Running Quiet Server') && (open http://localhost:8888/)"

alias jges="emacs ~/github/jg_shell_files/"
alias jgee="cd ~/github/jg_emacs/"

alias em="emacs"
alias lsa="ls -lha"
alias lsc="lscode"
alias ls="ls"
alias lsd="gls -la --group-directories-first"
alias lsda="ls -la | grep '^d'"

alias lg="logger"
alias log="logger"
alias lgf="logger food"
alias lgw="logger work"
alias lgp="logger play"
alias lgh="logger health"
alias ql="qlmanage -p 2>/dev/null"

alias cd="mycd $1"
alias cdc="mycdc $1"
alias cda="mycda $1"

alias jgf="find . -maxdepth 1 -iname $1"

alias macports="port"

alias defaultNode="node"
alias node="node --harmony --harmony_destructuring"

function mycd(){
    builtin cd "$@" && ls
}

function mycdc(){
    builtin cd "$@" && lsc
}

function mycda(){
    builtin cd "$@" && lsa
}

#disk usage:
alias jgdu="du -hd 1 | sort"


#-F --group-directories-first --sort=extension"

#Intern:
#alias internSetup="mkdir tests; cp ~/programming/js/node_modules/intern/tests/example.intern.js tests/intern.js"
#alias intern="~/programming/js/node_modules/.bin/intern-client config=tests/intern"

#Markdown alias:
#alias markdown="markdown_py-2.7"
