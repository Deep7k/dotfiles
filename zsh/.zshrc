export ZSH="$XDG_DATA_HOME"/oh-my-zsh

# Theme
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"
[[ ! -f ${ZDOTDIR:-~}/.p10k.zsh ]] || source ${ZDOTDIR:-~}/.p10k.zsh

# Plugins
plugins=(git
zsh-autosuggestions
zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Tab title
precmd() {
  # sets the tab title to current dir
  echo -ne "\e]1;${PWD##*/}\a"
}

# Aliases
alias zconfigrc='gedit ~/.config/zsh/.zshrc'
alias zhistory='nvim ~/.local/state/zsh/history'
alias zconfigenv='nvim /etc/zsh/zshenv'
alias incognito=' unset HISTFILE'

# zstyle history setup
zstyle ':completion:*' menu select
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate #enable approximate matches for completion

# zsh history setup
HISTSIZE=10000
SAVEHIST=10000
setopt append_history
setopt hist_expire_dups_first
setopt hist_ignore_space
setopt inc_append_history
setopt share_history

# fix zsh annoying history behavior
h() { if [ -z "$*" ]; then history 1; else history 1 | egrep "$@"; fi; }

# key bindings
bindkey '^H' backward-kill-word
bindkey '5~' kill-word

# zsh-syntax-highlighting config
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

