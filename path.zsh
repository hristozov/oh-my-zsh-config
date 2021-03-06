# Set the appropriate PATH entries.

if [ -e "$HOME/bin" ]
then
  path+="$HOME/bin"
fi

# Contains some binaries installed with homebrew.
if [ -e "/usr/local/sbin" ]
then
  path+="/usr/local/sbin"
fi

if [ -e "$HOME/.cabal/bin" ]
then
  path+="$HOME/.cabal/bin"
fi

if hash yarn 2>/dev/null; then
  path+="$(yarn global bin)"
fi

export PATH

# vim: et sw=2 sts=2
