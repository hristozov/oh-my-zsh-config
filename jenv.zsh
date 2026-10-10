if [ -x "$HOME/.jenv/bin/jenv" ]; then
   export PATH="$HOME/.jenv/bin:$PATH"
   eval "$(jenv init -)"
fi
