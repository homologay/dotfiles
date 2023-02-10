#!/bin/fish

# some tools useful for installing things
sudo xbps-install curl gzip

# install fish shell
sudo xbps-install fish-shell
# create ~/.config/fish/config.fish (todo)

fish rust.fish

# note: should just install enough to have an actual haskell dev env. 
# install X11 and xmonad, according to https://www.reddit.com/r/voidlinux/comments/mpdr5f/how_to_install_xmonad/ 
sudo xbps-install libX11-devel libXScrnSaver-devel libXft-devel libXinerama-devel libXrandr-devel
sudo xbps-install cabal-install xmobar
cabal install --lib xmonad xmonad-contrib X11
cabal install xmonad

#add $HOME/.cabal/bin to PATH
# in fish config: PATH=$PATH:$HOME/.cabal/bin

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ alacritty terminal emulator ~~~~~~
# dependencies
sudo xbps-install cmake freetype-devel expat-devel fontconfig-devel libxcb-devel pkg-config python3

# install git repo
git clone https://github.com/alacritty/alacritty.git
cd alacritty
# building for X11
cargo build --release --no-default-features --features=x11
# todo: copy binary to somewhere in $PATH

# rest is at: https://github.com/alacritty/alacritty/blob/master/INSTALL.md
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# install starship, kitty ... (terminal env)
# todo!

# install zellij, 

# install and alias to GNU counterparts
# bat=cat, exa=ls, rg, bottom=top, tldr (tealdeer), vim=hx, .. 
