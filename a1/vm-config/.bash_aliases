alias l='ls -a'
alias ll='ls -alF'
alias cs='printf "\033c"'
shopt -s dotglob
alias s="systemctl suspend"
alias sd="sudo shutdown 0"
alias reb="sudo shutdown -r 0"
alias hst="history"
alias rmsw="rm .sw*"

# unalias c
d() { cd "$@" && ls -a ; }
alias h="d ~"
cd_up() { d $(printf "%0.s../" $(seq 1 $1 )) ; }
alias "d."="cd_up"

alias n="vim"
rfnd() { find . -name "$1" ; } 
# rfnde() { find . -name "*.$1" ; }
rgrp() { grep -r $1 * ; } 

alias vv="vim ~/.vimrc"
alias va="vim ~/.bashrc"
alias vb="vim ~/.bash_aliases"
alias r=". ~/.bashrc"

# a1
alias a1="d ~/a1"
alias cpc="scp -P 23 -rp ~/.bashrc ~/.bash_aliases ~/.inputrc ~/.vimrc kevin@192.168.0.10:/home/kevin/school/369/a1/vm-config"
