# My git aliases.

alias g='git'
alias gap='git add -p'
alias gb-remove-merged='git branch --list | egrep "\s{2}merged" | xargs git branch -D'
alias gbd='git branch -D'
alias gcob='git checkout -b'
alias gcom='git checkout origin/master'
alias gdh='git diff head'
alias gdm='git diff master'
alias gdmh='git diff --stat master HEAD'
alias gdms='git diff --stat master'
alias gds='git diff --staged'
alias gdsst='git diff --staged --stat'
alias gdst='git diff --stat'
alias gh='git show'
alias git-ignore-file='git update-index --assume-unchanged'
alias git-list-biggest-objects="git rev-list --objects --all | grep \"\$(git verify-pack -v .git/objects/pack/*.idx | sort -k 3 -n | tail -10 | awk '{print\$1}')\""
alias git-list-ignored-files="git ls-files -v | grep '^[[:lower:]]'"
alias git-prune-origin='git remote update origin --prune'
alias git-prune-reflog='git reflog expire --expire=1.minute refs/heads/master && git fsck --unreachable && git prune && git gc'
alias git-set-default-branch='git symbolic-ref HEAD refs/heads/'
alias git-unignore-file='git update-index --no-assume-unchanged'
alias gmm='git merge master'
alias gms='git merge --squash'
alias gpo='git push origin'
alias gposu='git push --set-upstream origin $(git_current_branch)'
alias gpt='git push --tags'
alias grbm='git rebase master'
alias grbb='git rebase -i master'
alias grs='git reset --soft HEAD~1'
alias gsui='git submodule update --init'
alias gt='git tag'
alias gtd='git tag -d'

gb-merged() {
  git branch -M $1 "merged/$1"
}

gdbr() {
  git diff $1 HEAD
}

gllg() {
  git log --stat ^$1 HEAD
}

grbh() {
  git rebase -i HEAD~$1
}

# TODO: Move it to a completions file.
compdef _git gcom=git-checkout
compdef _git gdm=git-diff
compdef _git gdbr=git-diff
compdef _git gmm=git-merge
compdef _git gms=git-merge
compdef _git gb-merged=git-merge
