# Various environment variables.

export EDITOR=`which vim`
export PAGER=`which most`
export HISTFILE=~/.histfile
export HISTSIZE=100000
export SAVEHIST=100000
export CONDOR_CONFIG=/Users/gh/condor/etc/condor_config

if [ -e "$HOME/bin" ]
then
  path+="$HOME/bin"
fi

if [ -e "$HOME/idea" ]
then
  path+="$HOME/idea/bin"
fi

path+="/usr/local/sbin"

if [ -e "/Applications/Racket v6.0.1/" ]
then
  path+="/Applications/Racket v6.0.1/bin"
fi

if [ -e "$HOME/.cabal/bin" ]
then
  path+="$HOME/.cabal/bin"
fi

if [ -e "$HOME/.nimble/bin" ]
then
  path+="$HOME/.nimble/bin"
fi

if [ -e "$HOME/condor" ]
then
  path+="$HOME/condor/bin"
  path+="$HOME/condor/sbin"
fi

export PATH
