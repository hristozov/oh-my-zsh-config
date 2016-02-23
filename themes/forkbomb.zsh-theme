setopt prompt_subst

function prompt_char {
  if [ $UID -eq 0 ]; then echo "Ψ"; else echo "λ"; fi
}

svn_prompt() {
  if $(in_svn); then
    echo " ($(svn_prompt_info)@$(svn_get_rev_nr))"
  else
    echo ""
  fi
}

prompt_string() {
  local hostname="%{$fg_bold[green]%}%m"
  local directory="%{$fg_bold[blue]%}%(!.%1~.%~)"
  local svn_prompt="$(svn_prompt)"
  local scm_prompt="%{$fg_bold[yellow]%}$svn_prompt"
  local prompt_character="%{$fg_bold[blue]%} %_$(prompt_char)%{$reset_color%}"
  echo "$directory$scm_prompt$prompt_character "
}

PROMPT='$(prompt_string)'

ZSH_THEME_GIT_PROMPT_PREFIX=" ("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_SVN_PROMPT_DIRTY="%{$fg_bold[red]%}(⚡)%{$fg_bold[yellow]%}"
ZSH_THEME_SVN_PROMPT_CLEAN="%{$fg_bold[green]%}(○)%{$fg_bold[yellow]%}"
