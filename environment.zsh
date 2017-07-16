# Various environment variables.

export TAUNT="say fuck shit cock balls"
export EDITOR=`which vim`

if hash most 2>/dev/null; then
  export PAGER=`which most`
else
  export PAGER=`which less`
fi

export HISTFILE=~/.histfile
export HISTSIZE=1500000
export SAVEHIST=1500000

if [ -f /usr/libexec/java_home ]; then
  export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
fi
