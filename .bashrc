# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export LANG="zh_CN.UTF8"
export PS1="\[\033]0;\h$\w\007\033[36m\]\u@\h[\d \t] \[\033[33m\]\w\[\033[0m\]\n$ "

PATH_APPEND=/sbin
export PATH=$PATH:$PATH_APPEND

export CPATH=/usr/include:/include
export LIBRARY_PATH=/usr/lib64:/usr/lib:/lib64:/lib
export LD_LIBRARY_PATH=/usr/lib64:/usr/lib:/lib64:/lib

if [ -f $HOME/.bash_alise ]; then
	source $HOME/.bash_alise
fi

if [ -f $HOME/.localrc ]; then
	source $HOME/.localrc
fi

if [ -f $HOME/.gccrc ]; then
	source $HOME/.gccrc
fi

if [ -f $HOME/.gorc ]; then
	source $HOME/.gorc
fi

if [ -f $HOME/.mirrorsrc ]; then
	source $HOME/.mirrorsrc
fi

if [ -f $HOME/.perlbrewrc ]; then
	source $HOME/.perlbrewrc
fi

if [ -f $HOME/.pythonrc ]; then
	source $HOME/.pythonrc
fi

if [ -f $HOME/.Rrc ]; then
	source $HOME/.Rrc
fi

if [ -f $HOME/.ensembl-veprc ]; then
	source $HOME/.ensembl-veprc
fi

export HISTSIZE=1000000
