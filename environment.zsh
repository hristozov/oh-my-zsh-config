# Various environment variables.

export LANG="en_US.UTF-8"
export EDITOR=`which vim`

if hash most 2>/dev/null; then
  export PAGER=`which most`
else
  export PAGER=`which less`
fi

# Do not use a pager for less than 1 page
export LESS="$LESS -FRXK" 

export HISTFILE=~/.histfile
export HISTSIZE=50000
export SAVEHIST=50000

# vim: et sw=2 sts=2
