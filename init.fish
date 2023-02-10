#!/bin/fish

# some tools useful for installing things
sudo xbps-install curl gzip base-devel
# note: base-devel provides: m4, autoconf, automake, bc, binutils, bison, ed, libfl-devel, flex, libgcc-devel, 
# kernel-libc-headers, glibc-devel, isl, cloog, mpfr, libmpc, gcc, libstdc++-devel, gcc-c++, gettext-libs, 
# gettext, groff, libtool, make, patch, pkg-config, texinfo, unzip, xz. 

# install fish shell
sudo xbps-install fish-shell

# install rust and toolchain
fish rust.fish

# install alacritty
sudo xbps-install alacritty

# install ytfzf
sudo xbps-install jq mpv fzf yt-dlp #dependencies
git clone https://github.com/pystardust/ytfzf
cd $HOME/ytfzf
make install doc
cd $HOME

# some utilities
sudo xbps-install ripgrep bat exa bottom tealdeer helix

# ripgrep-all
sudo xbps-install pandoc poppler-utils ffmpeg tesseract #dependencies
cargo install --locked ripgrep_all 

# symlink conifg dirs to .config
ln -s $HOME/workflow/fish $HOME/.config/fish
ln -s $HOME/workflow/alacritty $HOME/.config/alacritty
ln -s $HOM#/workflow/helix $HOME/.config/helix