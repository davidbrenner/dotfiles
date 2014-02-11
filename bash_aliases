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

alias stamp='date "+%Y%m%d%a%H%M"'
alias top-commands='history | awk "{print $2}" | awk "BEGIN {FS="|"} {print $1}" |sort|uniq -c | sort -rn | head -10'

alias dbrenn="mosh davidb@dbrenn.com"
alias apathy="ssh davidb@apathy.brenner.lan"
alias hdl="ssh davidb@hdl-08.ce.rit.edu"
alias rancor="mosh remmer@rancor.csh.rit.edu"

# taskwarrior aliases
alias next="task limit:1"
alias n=next
alias t=task
