# Various environment variables.

export LANG="en_US"
export EDITOR=`which vim`

if hash most 2>/dev/null; then
  export PAGER=`which most`
else
  export PAGER=`which less`
fi

# Do not use a pager for less than 1 page
export LESS="$LESS -FRXK" 

export HISTFILE=~/.histfile
export HISTSIZE=1500000
export SAVEHIST=1500000

if [ -f /usr/libexec/java_home ]; then
  export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
fi

# vim: et sw=2 sts=2
