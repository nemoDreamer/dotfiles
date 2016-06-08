function fish_title

  echo $_ ' '

  # set -l parent    (__bobthefish_pretty_parent (pwd))
  # set -l directory (basename (pwd))
  # echo "$parent/$directory"

  echo (basename (pwd))
end
