function peco_select_git_show
  if set -q $argv
    git log --oneline | peco | cut -d " " -f1 | read line; git show $line
  else
    git log --oneline | peco --query $argv | cut -d " " -f1 | read line; git show $line
  end
end
