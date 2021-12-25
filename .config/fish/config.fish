# --------------------
# PATH
# --------------------
set -x GOPATH $HOME/go
set -x PYENV_ROOT $HOME/.pyenv

set -x PATH /opt/local/bin $PATH
set -x PATH /opt/local/sbin $PATH
set -x PATH /usr/local/bin $PATH
set -x PATH /usr/local/sbin $PATH
set -x PATH $HOME/.nodebrew/current/bin $PATH
set -x PATH $HOME/.cargo/bin $PATH
set -x PATH $HOME/.nimble/bin $PATH
set -x PATH $HOME/dotfiles $PATH
set -x PATH $HOME/.pyenv/bin $PATH
set -x PATH $PYENV_ROOT/bin $PATH
set -x PATH $HOME/.local/bin $PATH


# --------------------
# VARIABLES
# --------------------
set -x EDITOR /usr/bin/vi
set -x LANG ja_JP.UTF-8

# --------------------
# init
# --------------------
starship init fish | source
eval (pyenv init - | source)

# --------------------
# alias
# --------------------
alias vim='nvim'
alias vi='nvim'
alias ls='exa'
alias cat='bat'
alias tt='tweet'
# alias pip='pip3'
# alias python='python3'
alias pdf2eps='pdftops -eps'
alias flake8='flake8 --statistics --show-source --max-line-length 88 --docstring-convention numpy'
alias thist="history --show-time='%Y/%m/%d %H:%M:%S '"

# --------------------
# vim_bindings
# --------------------
fish_vi_key_bindings

# --------------------
# fuck
# --------------------
thefuck --alias | source

# --------------------
# tmuxinator
# --------------------
# tmuxinator daily

# source /usr/local/opt/asdf/asdf.fish
