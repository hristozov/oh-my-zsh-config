# My git aliases.

alias g='git'
alias gap='git add -p'
alias gb-remove-merged='git branch --list | egrep "\s{2}merged" | xargs git branch -D'
alias gbd='git branch -D'
alias gcf='git commit --fixup'
alias gcob='git checkout -b'
alias gcom='git checkout origin/$(git_main_branch)'
alias gcs='git changeset'
alias gdh='git diff head'
alias gdm='git diff $(git_main_branch)'
alias gdmb='git diff $(git merge-base HEAD origin/$(git_main_branch))..'
alias gdmh='git diff --stat $(git_main_branch) HEAD'
alias gdms='git diff --stat $(git_main_branch)'
alias gdo='git diff origin/$(git_current_branch)'
alias gdot='git diff origin/$(git_current_branch) --stat'
alias gds='git diff --staged'
alias gdsst='git diff --staged --stat'
alias gdst='git diff --stat'
alias gfu='git fetch upstream'
alias gh='git show'
alias git-ignore-file='git update-index --assume-unchanged'
alias git-list-biggest-objects="git rev-list --objects --all | grep \"\$(git verify-pack -v .git/objects/pack/*.idx | sort -k 3 -n | tail -10 | awk '{print\$1}')\""
alias git-list-ignored-files="git ls-files -v | grep '^[[:lower:]]'"
alias git-prune-origin='git remote update origin --prune'
alias git-prune-reflog='git reflog expire --expire=1.minute refs/heads/$(git_main_branch) && git fsck --unreachable && git prune && git gc'
alias git-set-default-branch='git symbolic-ref HEAD refs/heads/'
alias git-unignore-file='git update-index --no-assume-unchanged'
alias glg='git lg'
alias glmb='git log $(git merge-base HEAD origin/$(git_main_branch))..'
alias glom='git pull origin $(git_main_branch)'
alias gmb='git merge-base HEAD'
alias gmbo='git merge-base HEAD origin/$(git_main_branch)'
alias gmm='git merge $(git_main_branch)'
alias gmo='git merge origin/$(git_main_branch)'
alias gms='git merge --squash'
alias gpo='git push origin'
alias gposu='git push --set-upstream origin $(git_current_branch)'
alias gpt='git push --tags'
alias grbm='git rebase $(git_main_branch)'
alias grbmi='git rebase -i $(git_main_branch)'
alias grbo='git rebase origin/$(git_main_branch)'
alias grboi='git rebase -i origin/$(git_main_branch)'
alias gre='git recent'
alias gres='git reset --soft HEAD~1'
alias grmbi='git rebase -i $(git merge-base HEAD origin/$(git_main_branch))'
alias grs='git restore --staged'
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

git-rebase-changeset() {
  cln=$(git changeset show | head -n1 | awk '{print $2}')
  echo "Rebasing $cln"
  git rebase $@ origin/$(git_main_branch)
  git changeset update --since origin/$(git_main_branch) $cln
}

gbdd() {
  git branch -D $1
  git push origin :$1
}

git-fix-copyrights() {
  base=$(git merge-base HEAD origin/$(git_main_branch))
  current_year=$(date +%Y)
  last_year=$(($current_year - 1))

  for f in $(git diff --name-only $base); do
    if [ $(head -n2 $f | grep -c $current_year) != "0" ]; then
        echo "Skipping $f, it's already stamped"
        continue
    fi
    echo "Processing $f"

    # Replace \ last_year with \ last_year-current_year
    gsed -i "1,2s/[[:space:]]$last_year/&-$current_year/g" $f
    git diff --exit-code $f || continue

    # Replace -last_year with -current_year
    gsed -i "1,2s/-$last_year/-$current_year/g" $f
    git diff --exit-code $f || continue

    # Replace ,last_year with ,last-year-current_year
    gsed -i "1,2s/,$last_year/&-$current_year/g" $f
    git diff --exit-code $f || continue

    # Replace some_year-other-year with some_year-other_year,current_year
    gsed -i "1,2s/[[:digit:]]\{4\}-[[:digit:]]\{4\}/&,$current_year/g" $f
    git diff --exit-code $f || continue

    # Replace some_year with some_year,current_year
    gsed -i "1,2s/[[:space:]][[:digit:]]\{4\}/&,$current_year/g" $f
    git diff --exit-code $f || continue

    echo "WARNING: File $f still doesn't match anything!"
  done
}

gto() {
  git checkout -b topic/$USER/$1
}

# TODO: Move it to a completions file.
compdef _git gcom=git-checkout
compdef _git gdm=git-diff
compdef _git gdbr=git-diff
compdef _git gmm=git-merge
compdef _git gms=git-merge
compdef _git gb-merged=git-merge
compdef _git gbdd=git-checkout

# vim: et sw=2 sts=2
