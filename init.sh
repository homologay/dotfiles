#!/bin/sh

# install curl
sudo xbps-install curl

# install rustup
curl --proto "=https" --tlsv1.3 https://sh.rustup.rs -sSf | sh

# install cargo  
# rustup install clippy rust-analyzer, rustfmt, others,..

# check rustup --version command return code, to see if rustup got PATH configured right
# if fail, return error message and try to set PATH to include .cargo/bin 

# install nushell
xbps-install nushell


# (why not just install all the things needed for haskell development)
# install X11 and xmonad, according to https://www.reddit.com/r/voidlinux/comments/mpdr5f/how_to_install_xmonad/ 
sudo xbps-install libX11-devel libXScrnSaver-devel libXft-devel libXinerama-devel libXrandr-devel
sudo xbps-install cabal-install xmobar
cabal install --lib xmonad xmonad-contrib X11
cabal install xmonad

#add $HOME/.cabal/bin to PATH
# in nushell config: PATH=$PATH:$HOME/.cabal/bin

# install alacritty, starship, kitty ... (terminal env)
# todo!

# install zellij, 

# install and alias to GNU counterparts
# bat=cat, exa=ls, dust=du, rg, bottom=top, tldr (tealdeer), vim=hx, .. 

# make nushell default
# todo!

