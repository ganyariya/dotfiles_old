#!/bin/bash
#https://zenn.dev/tsukkee/articles/stmk_advent_calendar_vim

cd ~
git clone https://github.com/alacritty/alacritty.git
cd alacritty

rustup override set stable
rustup update stable

make app
cp -r target/release/osx/Alacritty.app /Applications/

rm -rf ~/alacritty

