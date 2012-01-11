#!/bin/bash
#
# Symlinks all managed dotfiles
#
#   tests for symlink and continue
#   tests for regular file and moves out of the way
#   links the files
#
SCRIPTDIR="$(cd $(dirname "$0");pwd)"

FILES=(.bashrc .ps1 .screenrc .vimrc)

for file in ${FILES[@]}; do
    test -h $HOME/$file && continue
    test -f $HOME/$file && mv $HOME/$file{,-$(date +%F).old}
    ln -s "$SCRIPTDIR/$file" "$HOME/$file"
done
