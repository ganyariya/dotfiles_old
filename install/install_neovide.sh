#!/bin/zsh

brew install rustup
rustup-init
brew install cmake
git clone https://github.com/Kethku/neovide
cd neovide
cargo build --release

