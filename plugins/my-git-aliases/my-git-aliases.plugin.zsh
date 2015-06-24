# My git aliases.

alias g='git'
alias gcob='git checkout -b'
alias gcom='git checkout origin/master'
alias gdm='git diff --stat master'
alias gmm='git merge master'
alias gms='git merge --squash'
alias grs='git reset --soft HEAD~1'

gb-merged() {
  git branch -M $1 "_merged-$1"
}
