# support for thefuck: https://github.com/nvbn/thefuck

alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
