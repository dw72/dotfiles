export BROWSER='chromium'
export EDITOR='vi'

export PAGER="less"
export LESS="-R"

HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$HOME/.zsh_history"

TERM="xterm-256color"

# update PATH
path=(
  $DOTFILES/bin
  $HOME/bin
  /usr/local/{bin,sbin}
  $path
)
typeset -U path

# zsh options
setopt AUTO_CD
setopt NO_BG_NICE
setopt NO_HUP
#setopt IGNORE_EOF
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS
setopt LOCAL_TRAPS
setopt NO_NOMATCH
setopt PROMPT_SUBST
setopt NO_MONITOR

# pushd
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_MINUS

# history
setopt HIST_VERIFY
setopt EXTENDED_HISTORY
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY SHARE_HISTORY
setopt APPEND_HISTORY

setopt COMPLETE_ALIASES

fpath=($ZSH/functions $fpath)
autoload -U $ZSH/functions/*(:t)

# enable menu select for completion
zstyle ':completion:*' menu select
# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending
# default to file completion
zstyle ':completion:*' completer _expand _complete _files _correct _approximate
# automaticaly rehash new binaries
zstyle ':completion:*' rehash true
