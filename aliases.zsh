# Contains useful aliases, which I use regularly in my workflows.

alias b='brew'
alias be='bundle exec'
alias bu='bundle'
alias compress-bz2='tar --use-compress-program=pbzip2 -cvf'
alias compress-gz='tar -czvf'
alias compress-xz='tar --use-compress-program=pigz -cvf'
alias c='cargo'
alias ct='cargo test'
alias doc='docker'
alias find-files-with-trailing-whitespace='find . -type f -exec egrep -l " +$" {} \;'
alias grep='grep --colour=auto'
alias h='ls -hl'
alias l='ls -l'
alias la='ls -al'
alias lh='ls -alh'
alias m='mvim'
alias nv='nvim'
alias rebuild-search-index='sudo mdutil -E /'
alias reload-zshrc='source ~/.zshrc'
alias s='sudo'
alias serve-current-directory='python -m SimpleHTTPServer'
alias sv='sudo vim'
alias t='tmux'
alias tcc='tmux -CC'
alias ta='tmux attach'
alias tac='tmux -CC attach'
alias tat='tmux attach -t'
alias tact='tmux -CC attach -t'
alias tn='tmux new -s'
alias tnc='tmux -CC new -s'
alias v='vim'
alias wgc='wget -c'
alias y='yarn'

get-random-word() {
  perl -e 'srand; rand($.) < 1 && ($line = $_) while <>; print $line;' /usr/share/dict/words
}

ns() {
  nohup setsid $1 > /dev/null
}

remove-domain-from-known-hosts() {
  sed -i "" "/$1/d" ~/.ssh/known_hosts
}

# https://gist.github.com/lelandbatey/8677901
whiteboard-digitize() {
  convert $1 -morphology Convolve DoG:15,100,0 -negate -normalize -blur 0x1 -channel RBG -level 60%,91%,0.1 $2
}

# https://routley.io/tech/2017/11/23/logbook.html
lb() {
  $EDITOR ~/logbook/$(date '+%Y-%m-%d').md
}

# vim: et sw=2 sts=2
