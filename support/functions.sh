#!/usr/bin/env bash
# Taken from https://github.com/holman/dotfiles/blob/master/script/bootstrap

info () {
  printf "\r  [ \033[00;34m..\033[0m ] $1 "
}

user () {
  printf "\r  [ \033[0;33m?\033[0m ] $1 "
}

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

warn () {
  printf "\r\033[2K  [ \033[00;33m!!\033[0m ] $1\n"
}

fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}
