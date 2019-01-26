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
f() { cd "$@" && ls -a ; }
cd_up() { f $(printf "%0.s../" $(seq 1 $1 )) ; }
alias "f."="cd_up"

alias n="vim"
rfnd() { find . -name "$1" ; } 
# rfnde() { find . -name "*.$1" ; }
rgrp() { grep -r $1 * ; } 

alias vv="vim ~/.vimrc"
alias va="vim ~/.bashrc"
alias vb="vim ~/.bash_aliases"
alias r=". ~/.bashrc"

alias stsh="sudo start ssh"
gz() { grep $1 ~/.bash_aliases ; }

# a1
alias c2="f ~/compiling-2"
alias a1="f ~/a1"
alias cpc="scp -P 23 -rp ~/.bashrc ~/.bash_aliases ~/.inputrc ~/.vimrc kevin@192.168.0.11:/home/kevin/school/369/a1/vm-config"
alias cpi="scp -P 23 ~/a1/interceptor.c kevin@192.168.0.11:/home/kevin/school/369/a1/interceptor-vm.c"
alias l="ll interceptor.c test_intercept test_full"
# make
alias m="make"
alias mc="make clean"
#alias ma="make -f Makefile-alt"
#alias mac="make -f Makefile-alt clean"

# testing
#alias dm="dmesg | grep 369-a1 | tail -n 25"
alias dm="dmesg | grep 369-a1"
alias dmlt="dmesg | tail -n 1 | sed 's/\[ *\([0-9]\+\)\..*/\1/'"
function dmt() { cs && dmesg | grep $1\\. ; }
#function dmt() { dmesg | grep "$1" ; }
#alias in="sudo insmod interceptor.ko && dm"
#alias rmm="sudo rmmod interceptor.ko && dm"
alias in="sudo insmod interceptor.ko"
alias rmm="sudo rmmod interceptor.ko"
alias mi="m && in"
alias mir="m && in && rmm"
#alias t="cd ~/a1 && m && sudo ./test_intercept && dm"
alias t="cd ~/a1 && m && sudo ./test_full"
alias ti="cd ~/a1 && m && sudo ./test_intercept"
