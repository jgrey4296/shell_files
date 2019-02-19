function setupPath_minus_anaconda(){
    #PATHS:
    export PATH=/sbin:/usr/sbin:/bin:/usr/bin
    export PATH=/Users/jgrey/node_modules:$PATH
    export PATH=/usr/local/bin:$PATH
    export PATH=/Applications/SuperCollider:$PATH
    export PATH=/Volumes/Documents/Dropbox/Programming/Perl:$PATH
    export PATH=/Volumes/Documents/github/jg_shell_files:$PATH
    export PATH=/Applications/Racket\ v6.1.1/bin:$PATH
    export PATH=/usr/local/go/bin:$PATH
    export PATH=/Users/jgrey/github/otherLibs/cppcheck:$PATH

    #For supercollider:
    export PATH=/Applications/SuperCollider/SuperCollider.app/Contents/Resources:$PATH
    export PATH=/Applications/SuperCollider/SuperCollider.app/Contents/MacOS:$PATH

    #racket:
    export PATH=/Applications/Racket/bin:$PATH

    #for latex (mactex, when installed):
    export PATH=/usr/local/texlive/2017/bin/x86_64-darwin:$PATH

    #for blender:
    export PATH=/Applications/blender/blender.app/Contents/MacOS:$PATH

    #For clingo:
    export PATH=~/clingo:$PATH

    #for haskell / cabal
    export PATH=$HOME/Library/Haskell/bin:$PATH

    #for jacamo (see lang specific)
    export PATH=$JACAMO_HOME/scripts:$PATH

    #for ruby / gems:
    export PATH=/usr/local/lib/rub/gems/2.6.0/bin:$PATH
    export PATH=/usr/local/opt/ruby/bin:$PATH
}

function setupPath_plus_anaconda(){
    setupPath_minus_anaconda
    #for anaconda:
    export PATH=~/anaconda/bin:$PATH
}
#initial setup:
setupPath_plus_anaconda
#--

function remove_anaconda_for_brew(){
    setupPath_minus_anaconda
    export PYTHONPATH=/usr/local/lib/python2.7/site/packages
    export PYTHONPATH=~/github/otherLibs:$PYTHONPATH #personally installed libs
    export PYTHONPATH=~/github/:$PYTHONPATH #personally written libs
    export PYTHONPATH=$JG_PYLIBS:$PYTHONPATH
    export PYTHONPATH=./:$PYTHONPATH
}

function reinsert_anaconda_post_brew(){
    setupPath_plus_anaconda
    setPy3
}

#For Tidal:
export TIDAL_TEMPO_PORT=57120

#setting up the prompt:
export PS1='(\j): \D{%D} \A \u:  '

#Setting the location for spacemacs:
# export SPACEMACSDIR=~/.spacemacs.d/
