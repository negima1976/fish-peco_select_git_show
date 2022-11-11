function peco_select_git_show
  if set -q $argv
    git log --oneline | peco | cut -d " " -f1 | read line; git show $line
  else
    set peco_flags --query "$argv"
    git log --oneline | peco $peco_flags | cut -d " " -f1 | read line; git show $line
  end
end
