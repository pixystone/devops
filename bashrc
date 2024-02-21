# .bashrc

# User specific aliases and functions
alias grep='grep --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export LANG=en_US.UTF-8
  
# Alias
alias pa='ps fux | grep $USER'
alias ..='cd ..'
alias l='ls --color=auto'
alias ls='l'
alias ll='ls -lh'
alias lla='ls -alh'
alias lu='du -sh ./*'
alias du='du -sh'
#alias sed='gsed'
alias lt='ls -t . | head -n 1'
alias vt="vim `ls -t . | head -n 1`"

export PS1='\n\e[1;37m[\e[m\e[1;32m\u\e[m\e[1;33m@\e[m\e[1;35m\H\e[m \e[4m`pwd`\e[m\e[1;37m]\e[m\e[1;36m\e[m\n\$'

case $TERM in
    screen*)
        PATHTITLE='\[\ek\W\e\\\]'
        PROGRAMTITLE='\[\ek\e\\\]'
        PS1="${PROGRAMTITLE}${PATHTITLE}${PS1}"
        ;;
    xterm*)
        TITLEBAR='\[\e]0;\u@\h:\w\a\]'
        PS1="${TITLEBAR}${PS1}"
        ;;
    *)
        ;;
esac

if [ -e /usr/share/terminfo/x/xterm-256color ];then
    export TERM='xterm-256color'
else
    export TERM='xterm-color'
fi
