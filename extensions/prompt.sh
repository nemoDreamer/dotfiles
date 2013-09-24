# Show the exit code of the last command.
function __last_exit_code() {
  local code=$?
  if [ $code = 0 ]; then
    printf "$1" $code
  else
    printf "$2" $code
  fi
  return $code
}

# Show the bundler project name.
function __bundler_ps1 {
  local retval=$?
  if [ -n "${BUNDLE_GEMFILE-}" ]; then
    project_path="${BUNDLE_GEMFILE%/Gemfile}"
    project_name="${project_path##**/}"

    if [ -n "${1-}" ]; then
      printf "$1" "${project_name}"
    else
      printf "(%s)" "${project_name}"
    fi
  fi
  return $retval
}

# # adds the current branch name in green
# __git_prompt_info() {
#   ref=$(git symbolic-ref HEAD 2> /dev/null)
#   if [[ -n $ref ]]; then
#     echo "[%{$fg_bold[green]%}${ref#refs/heads/}%{$reset_color%}]"
#   fi
# }

# Show lots of info in the __git_ps1 output.
export GIT_PS1_SHOWDIRTYSTATE="true"
export GIT_PS1_SHOWSTASHSTATE="true"
export GIT_PS1_SHOWUNTRACKEDFILES="true"

# Define Bash prompt pieces
# * user@host
PS1_userhost='[\u@\h]'
# * bundler project name (bundle exec bash)
PS1_bundler='\[\e[36m\]$(__bundler_ps1 "[%s] ")\[\e[0m\]'
# * git prompt (branch, dirty/stash/untracked files state)
(type __git_ps1 2>/dev/null | grep -q 'is a function') &&
PS1_git='$(__git_ps1 "\[\e[0;32m\][%s]\[\e[0m\]")'
# * last exit code (green on success, otherwise red)
PS1_exitcode='$(__last_exit_code "\[\033[1;32m\]%s\[\033[00m\]" "\[\033[01;31m\]%s\[\033[00m\]")'
# * current directory
PS1_pwd='\[\e[36m\][\w]\[\e[0m\]'

# Concatenate prompt
export PS1="$PS1_userhost ${PS1_bundler}${PS1_git} $PS1_exitcode $PS1_pwd \$ "

# * terminal window title (user@host:/currentdir)
# export PS1=$PS1'\[\033]2;\u@\h: $PWD\007\]'
# * terminal tab title (parentdir/currentdir)
# export PS1=$PS1'\[\033]1;$(echo $(basename $(dirname "$PWD"))/\W|tr -s /)\007\]'

# set
# export PS1='$(__git_prompt_info)[${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%~%{$reset_color%}] '

# FYI: PS1 on webdev0
# \[\033[0;36m\]\u@\h \[\033[0;37m\]$(date +%H:%M:%S) \[\033[1;30m\][\[\033[1;32m\]\W\[\033[1;30m\]] $\[\033[0;37;00m\]
