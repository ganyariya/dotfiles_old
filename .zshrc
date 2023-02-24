# --------------------
# Path
# --------------------
export GOPATH=$HOME/go

export PATH=$PATH:$HOME/.nodebrew/current/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/.nimble/bin
export PATH=$PATH:$HOME/dotfiles/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.deno/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/opt/local/bin
export PATH=$PATH:/opt/local/sbin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/opt/homebrew/bin

# --------------------
# Completion
# --------------------
if [ -e ~/.zsh/completion ]; then
  fpath=(~/.zsh/completion $fpath)
fi

autoload -U compinit
compinit

# --------------------
# Variables
# --------------------
export EDITOR=/usr/bin/vi
export LANG=ja_JP.UTF-8

# --------------------
# init
# --------------------
eval "$(pyenv init -)"
eval $(thefuck --alias)

# --------------------
# Python
# --------------------
poetry config virtualenvs.in-project true
export PIPENV_VENV_IN_PROJECT=true

# --------------------
# alias
# -------------------
alias vim='nvim'
alias vi='nvim'
alias ls='exa --icons'
alias cat='bat'
alias g++='g++ -std=c++17'
alias sed='gsed'
alias xargs='xargs '

# --------------------
# vim
# -------------------
# https://qiita.com/b4b4r07/items/8db0257d2e6f6b19ecb9
bindkey -v
bindkey -M viins '^A'  beginning-of-line
bindkey -M viins '^B'  backward-char
bindkey -M viins '^D'  delete-char-or-list
bindkey -M viins '^E'  end-of-line
bindkey -M viins '^F'  forward-char
bindkey -M viins '^G'  send-break
bindkey -M viins '^H'  backward-delete-char
bindkey -M viins '^K'  kill-line
bindkey -M viins '^N'  history-beginning-search-forward 
bindkey -M viins '^P'  history-beginning-search-backward
bindkey -M viins '^U'  backward-kill-line
bindkey -M viins '^W'  backward-kill-word
bindkey -M viins '^Y'  yank

# --------------------
# zplug
# -------------------
if [[ ! -d ~/.zplug ]];then
  git clone https://github.com/zplug/zplug ~/.zplug
fi
source ~/.zplug/init.zsh

# itself
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
# highlight
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "Aloxaf/fzf-tab", defer:2
# better history
zplug "zsh-users/zsh-history-substring-search"
# suggest past commands
zplug "zsh-users/zsh-autosuggestions"
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
# better completions
zplug "zsh-users/zsh-completions"
# z command
zplug "rupa/z", use:"*.sh"
# better cd
zplug "b4b4r07/enhancd", use:init.sh

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi
zplug load

# --------------------
# setopt
# -------------------
setopt auto_cd
setopt auto_pushd
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt print_eight_bit
zstyle ':completion:*:default' menu select=1
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:lower:][:upper:]}'

# --------------------
# history
# -------------------
function select-history() {
  BUFFER=$(history -n -r 1 | fzf --no-sort +m --query "$LBUFFER" --prompt="History > ")
  CURSOR=$#BUFFER
}
zle -N select-history
bindkey '^r' select-history

# --------------------
# starship
# -------------------
eval "$(starship init zsh)"
