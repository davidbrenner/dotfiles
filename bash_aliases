alias winvm='virt-viewer -c qemu:///system xpsp2'
alias xpvm='virt-viewer -c qemu:///system xpsp2'
alias xpvm-start='virsh -c qemu:///system start xpsp2'
alias xpvm-stop='virsh -c qemu:///system destroy xpsp2'
alias ssh-cluster='ssh -X dab2704@cluster.ce.rit.edu'
alias listen-icecast='while true; sleep 2; do mplayer -cache 32 http://apathy.rh.rit.edu:8000/mpd.ogg; done;'
alias sl="ls"
alias l="ls"
alias s="ls"
alias ll="ls -l"
alias lh="ls -lh"
alias la="ls -la"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."

alias df='df -h'
alias du='du -h -c'
alias reload='source ~/.bashrc'
alias biggest='BLOCKSIZE=1048576; du -x | sort -nr | head -10'


alias G="grep -n --color=always --binary-file=without-match --exclude=tags \
--exclude=*-min.js --exclude-dir='.[a-zA-Z]*' --exclude-dir='external' \
--exclude-dir='blib'"
alias GR="G -r"
alias RG="GR"
alias GRI="G -r -i"
alias GIR="GRI"
alias IGR="GRI"
alias IRG="GRI"
alias grep="grep --color"

alias paux="ps aux|grep -i"
alias c="clear"
alias which='type -a'
alias open="xdg-open"

# this was cute, but is dumb
#alias gcc='cowsay "Hello"; gcc'
#alias g++='cowsay "Hello"; g++'
#alias make='cowsay "Hello"; nice -n 10 make'
#alias javac='cowsay "Hello"; javac'

alias stamp='date "+%Y%m%d%a%H%M"'
alias top-commands='history | awk "{print $2}" | awk "BEGIN {FS="|"} {print $1}" |sort|uniq -c | sort -rn | head -10'
alias weather="weather -f -c rochester -s ny --id=KROC"

alias dbrenn="mosh davidb@dbrenn.com"
alias apathy="ssh davidb@192.168.0.3"
alias hdl="ssh davidb@hdl-08.ce.rit.edu"
alias rancor="mosh remmer@rancor.csh.rit.edu"

# taskwarrior aliases
alias next="task limit:1"
alias n=next
alias t=task
