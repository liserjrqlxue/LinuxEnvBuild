# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions


export PS1="\[\033]0;\h$\w\007\033[36m\]\u@\h[\d \t] \[\033[33m\]\w\[\033[0m\]\n$ "

PATH_APPEND=/sbin
export PATH=$PATH:$PATH_APPEND

export LIBRARY_PATH=/usr/lib64:/usr/lib:/lib64:/lib
export LD_LIBRARY_PATH=/usr/lib64:/usr/lib:/lib64:/lib

if [ -f $HOME/.localrc ]; then
	source $HOME/.localrc
fi

if [ -f $HOME/.gorc ]; then
	source $HOME/.gorc
fi

if [ -f $HOME/.gnurc ]; then
	source $HOME/.gnurc
fi
