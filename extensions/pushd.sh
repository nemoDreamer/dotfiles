__pushd()
{
  if [ $# -eq 0 ]; then
    DIR="${HOME}"
  else
    DIR="$1"
  fi

  builtin pushd "${DIR}" > /dev/null
  echo -n "DIRSTACK: "
  dirs
}

__pushd_builtin()
{
  builtin pushd > /dev/null
  echo -n "DIRSTACK: "
  dirs
}

__popd()
{
  builtin popd > /dev/null
  echo -n "DIRSTACK: "
  dirs
}

# alias cd='__pushd'
# alias back='__popd'
# alias flip='__pushd_builtin'

export dirstacksize=5
