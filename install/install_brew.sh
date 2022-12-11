#!/bin/bash

echo "installing homebrew..."
which brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "ok. run brew upgrade..."
brew upgrade


formulas=(
    act
    asciinema
    asciiquarium
    awscli
    aws-shell
    bat
    ctop
    dagger/tap/dagger
    dat
    dust
    exa
    ffmpeg
    fd
    figlet
    fish
    fzf
    gcc
    gh
    git
    git-brws
    git-lfs
    gist
    gitui
    git-delta
    gtop
    gotop
    jrnl
    koekeishiya/formulae/skhd
    koekeishiya/formulae/yabai
    mas
    ncurses
    nim
    neofetch
    neovim
    nodebrew
    nnn
    pandoc
    procs
    poppler
    poetry
    pstree
    pipx
    pipes-sh
    procs
    sd
    sqlite
    starship
    silicon
    taskell
    telnet
    terminal-notifier
    thefuck
    tldr
    tig
    tokei
    tmux
    tmuxinator
    tree
    ranger
    ripgrep
    vercel-cli
    warp
    wget
    wtfutil
    yarn
)

echo "brew tap"
brew tap homebrew/cask-fonts
brew tap "rhysd/git-brws" "https://github.com/rhysd/git-brws"
brew tap andreasgrill/utils

echo "brew install formula"
for formula in "${formulas[@]}"; do
	brew install $formula || brew upgrade $formula
done

# install gui up
casks=(
    alfred
    alt-tab
    appcleaner
    bitwarden
    boostnote
    cacher
    cheatsheet
    dash
    deepl
    discord
    docker
    dropbox
    flux
    font-hack-nerd-font
    gitkraken
    google-backup-and-sync
    gyazo
    iterm2
    julia
    kap
    karabiner-elements
    keycastr
    kindle
    lua
    manico
    meetingbar
    notion
    obs
    postman
    r
    raycast
    rectangle
    selfcontrol
    skitch
    slack
    spotify
    steam
    ueil
    unity-hub
    ubersicht
    visual-studio-code
    vlc
    zoom
)

echo "brew casks"
for cask in "${casks[@]}"; do
	brew install --cask $cask
done


stores=(
    497799835
    539883307
    937984704
    975890633
    1144071713
    1295203466
    1423210932
    1429033973
    1450950860
    1483764819
)


echo "app stores"
for store in "${stores[@]}"; do
    mas install $store
done


brew cleanup

echo "brew installed"

echo "services"

brew services start yabai

# https://qiita.com/macololidoll/items/1c369217c6203dd479bd


