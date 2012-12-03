export PATH=$HOME/bin:/opt/local/bin:/opt/local/sbin:$PATH

export LANG=ru_RU.UTF-8
export BLOCKSIZE=K
export EDITOR=vim
export PAGER=more

alias h='fc -l'
alias j='jobs'
alias ll='ls -laFo'
alias l='ls -l'
alias m=$PAGER
alias la='ls -la'
alias g='egrep -i'

alias vim='vim -o'

alias gd='git di | colordiff'
alias sd='svn di | colordiff'
alias gt='git st'
alias st='svn st'

alias sclean="svn st | grep '? ' | awk '{print \$2}' | xargs rm -r"
alias pclean="svn up && gmake clean && sclean && rm -rf lego contrib configs && svn up"

export PS1="`whoami`@`hostname | sed 's/\..*//'`:\w > "

if [ "$TERM" != "dumb" ] && [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
else
    alias ls='ls -G'
    export LSCOLORS="Exfxcxdxbxegedabagacad"
fi

if [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
fi

_expand()
{
    return 0;
}
