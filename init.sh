#!/bin/sh

#NOTE: needs to run as root

# install curl
xbps-install curl

# install rustup
curl --proto "=https" --tlsv1.3 https://sh.rustup.rs -sSf | sh

# install cargo and components
# todo!

# install alacritty, starship, kitty ... (terminal env)
# todo!

# install nushell
xbps-install nushell

# make nushell default, other defaults..
# todo!

# install X11 and xmonad, according to https://www.reddit.com/r/voidlinux/comments/mpdr5f/how_to_install_xmonad/ 

xbps-install libX11-devel libXScrnSaver-devel libXft-devel libXinerama-devel libXrandr-devel
xbps-install cabal-install xmobar
cabal install --lib xmonad xmonad-contrib X11
cabal install xmonad

#add $HOME/.cabal/bin to PATH 