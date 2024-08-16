#!/bin/sh
apk add tree ripgrep fzf htop helix bat

# dependencies for chimera-live
apk add xorriso squashfs-tools-ng

ln -s $(pwd)/helix $HOME/.config/helix
ln -s $(pwd)/bat $HOME/.config/bat
ln -s $(pwd)/htop $HOME/.config/htop

git config --global user.email "$EMAIL"
git config --global user.name "$NAME"
