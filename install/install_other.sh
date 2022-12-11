#!/bin/bash

# powerline
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
chmod +x install.sh
./install.sh
cd ..
rm -rf fonts

# Cica (powerline + nerd font)
mkdir ~/.tmp_font
cd ~/.tmp_font
curl -OL https://github.com/miiton/Cica/releases/download/v5.0.3/Cica_v5.0.3.zip
curl -OL https://github.com/yuru7/HackGen/releases/download/v2.5.3/HackGenNerd_v2.5.3.zip
unzip Cica_v5.0.3.zip
unzip HackGenNerd_v2.5.3.zip
cp -f Cica*.ttf ~/Library/Fonts/
cp -f HackGenNerd_v2.5.3/HackGen*.ttf ~/Library/Fonts/
fc-cache -vf
cd ~
rm -rf ~/.tmp_font

# tmux
# After downloading tmux, restart tmux & ctrl+a I
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# zsh
chsh -s /bin/zsh
