#!/bin/bash

# Alias definitions.
alias l='ls -lF --color=auto'
alias ll='ls -laF --color=auto'
alias v='vim -p'
alias hex='hexdump -C'
alias m='make'
alias mm='make -j 8'
alias ..='cd ..'
alias sudo='sudo '
alias xargs='xargs '
alias go='git checkout'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias g="ack-grep --type-add cpp=.c++"
alias time="/usr/bin/time -v"
alias json_pretty="python -mjson.tool"

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
export PS1="\`s=\$?; if [ x$SCHROOT_CHROOT_NAME != 'x' ]; then echo -n \"\[\033[01;31m\]($SCHROOT_CHROOT_NAME)\"; fi; echo -n \"\[\e[0;30;1m\][\[\e[0;36;1m\]\u\[\e[0;36m\]@\h\[\e[0;34;1m\] \[\e[0;33;1m\]\w\[\e[0;30;1m\]]\"; if [ \$s -eq 0 ]; then echo -n \"\[\e[0;32;1m\]\"; else echo -n \"\[\e[0;31;1m\]\"; fi; echo -n \"\\\$\[\e[0m\] \"\`"
