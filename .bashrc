# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

export EMAIL="greg@monkeyswithbuttons.org"

#
# Set my 10 year old PS1
#
if [ -f ~/.ps1 ]; then
	. ~/.ps1
fi

#
# History option from http://blog.sanctum.geek.nz/better-bash-history/
#
shopt -s histappend
HISTSIZE=1000000
HISTCONTROL=ignoreboth
HISTIGNORE='ls:ls -l:bg:fg:history'
HISTTIMEFORMAT='%F %T  '
shopt -s cmdhist

#
# Setup virtualenvwrapper
#
if [ -x /usr/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    . /usr/bin/virtualenvwrapper.sh

    alias mkvirtualenv='mkvirtualenv --no-site-packages'
fi

#
# My App Dir
#
if [ -d ~/Apps/bin ]; then
    export PATH=${PATH}:~/Apps/bin
fi
