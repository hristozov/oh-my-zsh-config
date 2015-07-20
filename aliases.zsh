# Contains useful aliases, which I use regularly in my workflows.

alias ad='npm run apidoc'
alias b='brew'
alias bo='bower'
alias compress-bz2='tar --use-compress-program=pbzip2 -cvf'
alias compress-xz='tar --use-compress-program=pigz -cvf'
alias e='grep'
alias grep='grep --colour=auto'
alias h='ls -hl'
alias halt='sudo halt'
alias jh='npm run jshint'
alias l='ls -l'
alias la='ls -al'
alias lh='ls -alh'
alias m='mvim'
alias make='nice -n20 make -j4'
alias mm='middleman'
alias n='lein'
alias nv='nvim'
alias o='node'
alias off='ssh-add -D'
alias on='ssh-add -t 1800'
alias p='ps aux'
alias reboot='sudo reboot'
alias s='sudo'
alias spec='npm run spec'
alias spec-cover='npm run spec-coverage'
alias straxil='ssh straxil'
alias sv='sudo vim'
alias t='tmux -2'
alias ta='tmux -2 attach'
alias u='grunt'
alias v='vim'
alias va='vagrant'
alias wgc='wget -c'

beautify-json() {
  for file in *.json; do
    js-beautify $file > ${file/.json/-beat.json}
  done
}

curl-post-file() {
  curl -vv -X POST --data "@$2" $1
}

curl-post-json() {
  curl -vv -X POST -H "Content-Type:application/json" --data $2 $1
}

fix-cp1251-subs() {
  for file in *.srt; do
    iconv -f cp1251 -t utf8 $file > $file.utf8
    mv $file.utf8 $file
  done
}

get-groovy-sessions-show() {
  wgc http://www.groovysessions.com/radioshows/groovy-sessions-$1-part-01.mp3 && wgc http://www.groovysessions.com/radioshows/groovy-sessions-$1-part-02.mp3
}

get-random-word() {
  perl -e 'srand; rand($.) < 1 && ($line = $_) while <>; print $line;' /usr/share/dict/words
}

ns() {
  nohup setsid $1 > /dev/null
}

print-current-trello-tasks() {
  jq '.cards[] | select(.closed == false) | .name' $1
}

watch-apple-store() {
  while true; do
    curl -s $1 | grep customer_commit_display | tr -d '[[:space:]]' | sed 's/<spanclass=\"customer_commit_display\">//g' | sed 's/<\/span>//g'
    echo -n " "
    date
    sleep 120
  done
}

# https://gist.github.com/lelandbatey/8677901
whiteboard-digitize() {
  convert $1 -morphology Convolve DoG:15,100,0 -negate -normalize -blur 0x1 -channel RBG -level 60%,91%,0.1 $2
}
