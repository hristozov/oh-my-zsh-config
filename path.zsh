# Set the appropriate PATH entries.

if [ -e "$HOME/bin" ]
then
  path+="$HOME/bin"
fi

if [ -e "$HOME/idea" ]
then
  path+="$HOME/idea/bin"
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
