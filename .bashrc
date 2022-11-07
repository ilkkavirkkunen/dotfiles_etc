#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR='vim'
export VISUAL='vim'
export SUDO_EDITOR='vim'

source /etc/lscolors

alias ls='ls --color=auto --human-readable --group-directories-first'
alias tube='youtube-dl --restrict-filenames'
alias src='cd /usr/local/src'
alias doom='cd /usr/local/share/doom'

PS1='\[\033[01;36m\]\[\033[01;37m\]\w \[\033[01;36m\]\$ \[\033[0;37m\]'

shopt -s autocd
shopt -s histappend

# set colored-stats On
# set completion-ignore-case On

HISTSIZE=10000
HISTFILESIZE=20000
