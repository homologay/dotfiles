#!/bin/sh

# some tools useful for installing things
sudo xbps-install curl gzip base-devel
# note: base-devel provides: m4, autoconf, automake, bc, binutils, bison, ed, libfl-devel, flex, libgcc-devel, 
# kernel-libc-headers, glibc-devel, isl, cloog, mpfr, libmpc, gcc, libstdc++-devel, gcc-c++, gettext-libs, 
# gettext, groff, libtool, make, patch, pkg-config, texinfo, unzip, xz. 

# install rust
curl --proto "=https" --tlsv1.3 https://sh.rustup.rs -sSf | sh
rustup component add cargo clippy rust-analyzer rustfmt cargo-audit cargo-outdated cargo-geiger

# compile installer and run
cd installer
cargo build --release && sudo cargo run
