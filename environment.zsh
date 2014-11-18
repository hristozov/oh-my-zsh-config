# Various environment variables.

export EDITOR=`which vim`
export PAGER=`which most`
export HISTFILE=~/.histfile
export HISTSIZE=100000
export SAVEHIST=100000

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

export PATH
