#!/bin/bash
#
# Symlinks all managed dotfiles
#
SCRIPTDIR="$(cd $(dirname "$0");pwd)"

FILES=(.bashrc .ps1 .screenrc .vimrc)

for file in ${FILES[@]}; do
    cp "$SCRIPTDIR/$file" "$HOME/$file"
done
