
#------------------------------------------------------------
#antlr stuff
export CLASSPATH=/usr/local/lib/antlr-4.5-complete.jar:$CLASSPATH
alias antlr4='java -jar /usr/local/lib/antlr-4.5.3-complete.jar'
alias grun='java org.antlr.v4.runtime.misc.TestRig'
alias pant='antlr4 -Dlanguage=Python2'
alias antjs='antlr4 -Dlanguage=JavaScript'
#------------------------------------------------------------

#Python:

function setPy36(){
    export PYTHONPATH=/usr/local/lib/python3.6/site-packages #main site packages location
    export PYTHONPATH=~/github/otherLibs:$PYTHONPATH #personally installed libs
    export PYTHONPATH=~/github/:$PYTHONPATH #personally written libs
    source activate py36
}

function setPy3(){
    export PYTHONPATH=/usr/local/lib/python3.5/site-packages #main site packages location
    export PYTHONPATH=~/github/otherLibs:$PYTHONPATH #personally installed libs
    export PYTHONPATH=~/github/:$PYTHONPATH #personally written libs
    #source activate root --not used because it slows default startup
}

function resetPy3(){
    setPy3
    source activate root
    }

function setPy2(){
    export PYTHONPATH=/usr/local/lib/python2.7/site/packages
    export PYTHONPATH=~/github/otherLibs:$PYTHONPATH #personally installed libs
    export PYTHONPATH=~/github/:$PYTHONPATH #personally written libs
    source activate py2
}

setPy3


#Caffe Stuff:
#export DYLD_FALLBACK_LIBRARY_PATH=/usr/local/cuda/lib:$HOME/.pyenv/versions/anaconda-2.2.0/lib:/usr/local/lib/:/usr/lib


#JavaScript:
alias test="node --harmony --harmony_destructuring /usr/local/bin/nodeunit"
alias jsrepl="env NODE_NO_READLINE=1 node"

#TEX:
export TEXINPUTS=/Volumes/DOCUMENTS/Dropbox/Scripts/tex/:$TEXINPUTS

#PERL
export PERL5LIB=~/programming/perl/modules
export PERL5LIB=~/Desktop/cotillion/packages/prompter/prompter:$PERL5LIB
export PERL5LIB=~/Desktop/cotillion/packages/prompter/prompter/mod_aspects:$PERL5LIB
export PERL5LIB=~/Desktop/cotillion/packages/prompter/prompter/mod_drama:$PERL5LIB
export PERL5LIB=~/Desktop/cotillion/packages/prompter/prompter/mod_control:$PERL5LIB
export PERL5LIB=~/Desktop/cotillion/packages/prompter/prompter/mod_services:$PERL5LIB

#Prompter:
alias prompter="perl /Users/jgrey/Desktop/cotillion/packages/prompter/prompter/prompter.pl"


#NLTK:
export NLTK_DATA=~/assets/nlg/nltk

#Default editor:
export EDITOR=emacs


#TWINE:
alias twine="open ~/dropbox/Programs/Twine\ 2.0/index.html"