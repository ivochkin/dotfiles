#!/bin/bash

# Reset
Color_Off="\[\033[0m\]"       # Text Reset

# Regular Colors
Black="\[\033[0;30m\]"        # Black
Red="\[\033[0;31m\]"          # Red
Green="\[\033[0;32m\]"        # Green
Yellow="\[\033[0;33m\]"       # Yellow
Blue="\[\033[0;34m\]"         # Blue
Purple="\[\033[0;35m\]"       # Purple
Cyan="\[\033[0;36m\]"         # Cyan
White="\[\033[0;37m\]"        # White

# Bold
BBlack="\[\033[1;30m\]"       # Black
BRed="\[\033[1;31m\]"         # Red
BGreen="\[\033[1;32m\]"       # Green
BYellow="\[\033[1;33m\]"      # Yellow
BBlue="\[\033[1;34m\]"        # Blue
BPurple="\[\033[1;35m\]"      # Purple
BCyan="\[\033[1;36m\]"        # Cyan
BWhite="\[\033[1;37m\]"       # White

# Underline
UBlack="\[\033[4;30m\]"       # Black
URed="\[\033[4;31m\]"         # Red
UGreen="\[\033[4;32m\]"       # Green
UYellow="\[\033[4;33m\]"      # Yellow
UBlue="\[\033[4;34m\]"        # Blue
UPurple="\[\033[4;35m\]"      # Purple
UCyan="\[\033[4;36m\]"        # Cyan
UWhite="\[\033[4;37m\]"       # White

# Background
On_Black="\[\033[40m\]"       # Black
On_Red="\[\033[41m\]"         # Red
On_Green="\[\033[42m\]"       # Green
On_Yellow="\[\033[43m\]"      # Yellow
On_Blue="\[\033[44m\]"        # Blue
On_Purple="\[\033[45m\]"      # Purple
On_Cyan="\[\033[46m\]"        # Cyan
On_White="\[\033[47m\]"       # White

# High Intensty
IBlack="\[\033[0;90m\]"       # Black
IRed="\[\033[0;91m\]"         # Red
IGreen="\[\033[0;92m\]"       # Green
IYellow="\[\033[0;93m\]"      # Yellow
IBlue="\[\033[0;94m\]"        # Blue
IPurple="\[\033[0;95m\]"      # Purple
ICyan="\[\033[0;96m\]"        # Cyan
IWhite="\[\033[0;97m\]"       # White

# Bold High Intensty
BIBlack="\[\033[1;90m\]"      # Black
BIRed="\[\033[1;91m\]"        # Red
BIGreen="\[\033[1;92m\]"      # Green
BIYellow="\[\033[1;93m\]"     # Yellow
BIBlue="\[\033[1;94m\]"       # Blue
BIPurple="\[\033[1;95m\]"     # Purple
BICyan="\[\033[1;96m\]"       # Cyan
BIWhite="\[\033[1;97m\]"      # White

# High Intensty backgrounds
On_IBlack="\[\033[0;100m\]"   # Black
On_IRed="\[\033[0;101m\]"     # Red
On_IGreen="\[\033[0;102m\]"   # Green
On_IYellow="\[\033[0;103m\]"  # Yellow
On_IBlue="\[\033[0;104m\]"    # Blue
On_IPurple="\[\033[10;95m\]"  # Purple
On_ICyan="\[\033[0;106m\]"    # Cyan
On_IWhite="\[\033[0;107m\]"   # White

# Various variables you might want for your PS1 prompt instead
Time12h="\T"
Time12a="\@"
PathShort="\w"
PathFull="\W"
NewLine="\n"
Jobs="\j"

if [[ "$OSTYPE" == "linux-gnu" ]]; then
  NPROC=$(nproc)
elif [[ "$OSTYPE" == "darwin"* ]]; then
  NPROC=$(sysctl -n hw.ncpu)
fi

# Alias definitions.
alias l='ls -lF --color=auto --group-directories-first'
alias ll='ls -laF --color=auto --group-directories-first'
alias v='vim -p'
alias vim.norc='vim -u NONE'
alias hex='hexdump -C'
alias m='make'
alias mm='make -j$NPROC'
alias n='nose2 -v'
alias ..='cd ..'
alias sudo='sudo '
alias xargs='xargs '
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias g="ack --type-add cpp=.c++"
alias time="/usr/bin/time -v"
alias json-pretty="python -mjson.tool"
alias cmakedbg="cmake -DCMAKE_BUILD_TYPE=Debug"
alias cmakerel="cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo"
alias clipboard='xclip -sel clip'
set_term_title() {
  echo -ne "\033]0;$@\007"
}
alias set-term-title='set_term_title'
alias d='docker'
alias dc='docker-compose'
alias awk1="awk '{print \$1}'"
alias awk2="awk '{print \$2}'"
alias awk3="awk '{print \$3}'"
alias awk4="awk '{print \$4}'"
alias awk5="awk '{print \$5}'"
alias awk6="awk '{print \$6}'"
alias awk7="awk '{print \$7}'"
alias awk8="awk '{print \$8}'"
alias awk9="awk '{print \$9}'"
alias py="python"
alias py2="python2"
alias py3="python3"


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

export VIMHOME='~/.vim'
export SVN_EDITOR='/usr/bin/vim'
export GIT_EDITOR='/usr/bin/vim'
export EDITOR='/usr/bin/vim'
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1="\`\
s=\$?; \
if [ x$SCHROOT_CHROOT_NAME != 'x' ]; then \
echo -n \"$IBlack($BRed$SCHROOT_CHROOT_NAME$IBlack)\"; \
fi; \
echo -n \"$IBlack[$BCyan\u$Cyan@\h\"; \
if type git > /dev/null 2>&1; then \
if git rev-parse --git-dir > /dev/null 2>&1 ; then \
b=\$(git symbolic-ref --short -q HEAD 2>/dev/null); \
if [ -z \"\$b\" ]; then b=\$(git symbolic-ref -q HEAD 2>/dev/null); fi; \
if [ -z \"\$b\" ]; then b=\"(detached)\"; fi; \
if [ \"\$b\" ]; then b=\"$IBlack $IPurple@\$b\"; fi; \
echo -n \"\$b\"; \
fi; \
fi; \
echo -n \"$Black $BYellow\w\"; \
echo -n \"$IBlack]\"; \
if [ \$s -eq 0 ]; \
then echo -n \"$Green\"; \
else echo -n \"$BRed\"; \
fi; \
echo -n \"\\\$$Color_Off \"; \
\`"
export HISTCONTROL=ignoredups:erasedups HISTFILESIZE= HISTSIZE=
shopt -s histappend
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin

transfer() {
  if [ $# -eq 0 ]; then
    echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"
    return 1;
  fi
  tmpfile=$( mktemp -t transferXXX );
  if tty -s; then
    basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g');
    curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile;
  else
    curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ;
  fi;
  cat $tmpfile;
  rm -f $tmpfile;
}

docker-cleanup() {
  cleanup_images=$(cat ~/.docker-cleanup-images)
  docker ps -a | tail -n +2 | awk '{print $1}' | xargs docker rm -f
  docker image prune -f
  docker images | egrep "none|$cleanup_images" | awk '{print $3}' | xargs docker rmi -f
  docker network prune -f
}
