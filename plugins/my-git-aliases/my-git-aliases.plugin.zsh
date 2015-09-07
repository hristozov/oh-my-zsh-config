# My git aliases.

alias g='git'
alias gcob='git checkout -b'
alias gcom='git checkout origin/master'
alias gdh='git diff head'
alias gdm='git diff --stat master'
alias gdmh='git diff --stat master HEAD'
alias gbd='git branch -D'
alias gmm='git merge master'
alias gms='git merge --squash'
alias gpo='git push origin'
alias grs='git reset --soft HEAD~1'
alias grbm='git rebase master'
alias grbb='git rebase -i master'
alias gb-remove-merged='git branch --list | egrep "\s{2}merged" | xargs git branch -D'

gb-merged() {
  git branch -M $1 "merged/$1"
}

# TODO: Move it to a completions file.
compdef _git gcom=git-checkout
compdef _git gdm=git-diff
compdef _git gmm=git-merge
compdef _git gms=git-merge
compdef _git gb-merged=git-merge
