#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR='vim'
export VISUAL='vim'
export SUDO_EDITOR='vim'

source /etc/lscolors

xmodmap -e "keycode 118 = Delete"
xmodmap -e "keycode 119 = Insert"

alias ls='ls --color=auto --human-readable --group-directories-first'
alias tube='yt-dlp --restrict-filenames -f "bestvideo[height=480]+bestaudio/best[height=720]/bestvideo+bestaudio" -o "~/Videos/%(uploader)s_%(title)s.%(ext)s"'
alias tubed='yt-dlp -f "bestvideo[height=480]+bestaudio/best[height=720]/bestvideo+bestaudio" --remux-video mp4 --restrict-filenames -o "~/Videos/%(uploader)s/%(upload_date)s_%(title)s.%(ext)s"'
alias tubedargs='yt-dlp --extractor-args "youtube:player_js_version=actual" -f "bestvideo[height=480]+bestaudio/best[height=720]/bestvideo+bestaudio/93" --remux-video mp4 --restrict-filenames -o "~/Videos/%(uploader)s/%(upload_date)s_%(title)s.%(ext)s"'
alias satu='zathura'
alias grep='grep -i --color=auto'
alias sus='sudo loginctl suspend'
alias off='sudo poweroff'

PS1='\[\033[01;36m\]\[\033[01;37m\]\w \[\033[01;36m\]\$ \[\033[0;37m\]'

#shopt -s autocd
shopt -s histappend

# set colored-stats On
# set completion-ignore-case On

HISTSIZE=10000
HISTFILESIZE=20000
