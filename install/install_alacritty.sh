#!/bin/bash
# https://zenn.dev/tsukkee/articles/stmk_advent_calendar_vim

cd ~
git clone https://github.com/alacritty/alacritty.git
cd alacritty

rustup override set stable
rustup update stable

make app
cp -r target/release/osx/Alacritty.app /Applications/

# info
sudo tic -xe alacritty,alacritty-direct extra/alacritty.info
cd ~
/usr/local/opt/ncurses/bin/infocmp tmux-256color > ~/tmux-256color.info
sudo tic -xe tmux-256color ~/tmux-256color.info

rm -rf ~/alacritty
