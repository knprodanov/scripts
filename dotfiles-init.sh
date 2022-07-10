#!/usr/bin/env bash
REPO='git@github.com:knprodanov/dotfiles.git'

# define config alias locally since the dotfiles
# aren't installed on the system yet
function config {
   git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}

git init --bare $HOME/.dotfiles

config config user.name "knprodanov" && git config user.email "31728516+knprodanov@users.noreply.github.com"
config config --local status.showUntrackedFiles no

alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
