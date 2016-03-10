# Various environment variables.

export TAUNT="say fuck shit cock balls"
export EDITOR=`which vim`

if hash most 2>/dev/null; then
  export PAGER=`which most`
else
  export PAGER=`which less`
fi

export HISTFILE=~/.histfile
export HISTSIZE=200000
export SAVEHIST=200000
export ANSIBLE_INVENTORY=~/.ansible_hosts
