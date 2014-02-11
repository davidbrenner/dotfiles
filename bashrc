
# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

if [ -f ~/.bashrc_davidb ]; then
    . ~/.bashrc_davidb
fi
