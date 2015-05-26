# My git aliases.

alias g='git'
alias gdm='git diff --stat master'
compdef _git gdm=git-diff©
alias gmm='git merge master'
compdef _git gmm=git-merge
alias gms='git merge --squash'
compdef _git gms=git-merge
alias grs='git reset --soft HEAD~1'

gb-merged() {
  git branch -M $1 "_merged-$1"
}
compdef _git gb-merged=git-merge
