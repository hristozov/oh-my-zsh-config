if [[ $- != *i* ]] ; then
    # Shell is non-interactive.  Be done now!
    return
fi

export RAILS_ENV=development