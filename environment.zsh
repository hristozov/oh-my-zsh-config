# Various environment variables.

export EDITOR=`which vim`

if hash most 2>/dev/null; then
  export PAGER=`which most`
else
  export PAGER=`which less`
fi

export HISTFILE=~/.histfile
export HISTSIZE=100000
export SAVEHIST=100000
