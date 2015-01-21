#!/usr/bin/env bash
set -e
FILES="gemrc gitconfig bash_profile zshrc aliases vimrc"
BACKUPDIR="$HOME/dotfiles.old"
mkdir -pv $BACKUPDIR
for file in $FILES
do
    if [ -e $HOME/$file ]; then
        mv -v $HOME/$file $BACKUPDIR/$file
    fi
    ln -Fsv $PWD/$file $HOME/.$file
done
echo "All done!"
