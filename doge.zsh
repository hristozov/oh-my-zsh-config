# Show a doge if it's available

if hash doge 2>/dev/null && [ -z "$TMUX" ];  then
  doge
fi
