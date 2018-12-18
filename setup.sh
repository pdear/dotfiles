#!/bin/sh
# Makes symlinks from home directory to dotfiles repo

REPO="$(pwd)"

ln -s "$REPO/.vimrc"        ~/.vimrc
ln -s "$REPO/.tmux.conf"    ~/.tmux.conf

