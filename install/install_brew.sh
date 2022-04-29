#!/bin/bash

echo "installing homebrew..."
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "ok. run brew upgrade..."
brew upgrade


formulas=(
    act
    auto-selfcontrol
    asciinema
    asciiquarium
    awscli
    aws-shell
    bat
    cookiecutter
    ctop
    dagger/tap/dagger
    dat
    dust
    exa
    ffmpeg
    fd
    figlet
    fish
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
    musikcube
    mysql
    navi
    nb
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
    sampler
    sd
    sqlite
    starship
    silicon
    # https://github.com/Rigellute/spotify-tui
    spotify-tui 
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
brew tap clangen/musikcube

echo "brew install formula"
for formula in "${formulas[@]}"; do
	brew install $formula || brew upgrade $formula
done

# install gui up
casks=(
    atom
    alfred
    alt-tab
    appcleaner
    biscuit
    bitwarden
    boostnote
    cacher
    clickup
    cheatsheet
    cold-turkey-blocker
    dash
    deepl
    discord
    docker
    drawio
    dropbox
    flux
    font-hack-nerd-font
    gitkraken
    grammarly
    google-backup-and-sync
    gyazo
    inkscape
    iterm2
    julia
    jetbrains-toolbox
    kap
    karabiner-elements
    keycastr
    kindle
    lua
    mamp
    manico
    meetingbar
    notion
    obs
    papers
    postman
    r
    rectangle
    selfcontrol
    skitch
    skype
    slack
    spotify
    steam
    tickeys
    ueil
    unity-hub
    ubersicht
    visual-studio
    visual-studio-code
    vrew
    vlc
    xmind
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


