# install rustup, and the other rust development tools

# install rustup
curl --proto "=https" --tlsv1.3 https://sh.rustup.rs -sSf | sh

# install cargo  
# todo

# install cargo tools
rustup component add clippy rust-analyzer rustfmt cargo-audit cargo-outdated cargo-geiger

# check rustup --version command return code, to see if rustup got PATH configured right
# if fail, return error message and try to set PATH to include .cargo/bin 
