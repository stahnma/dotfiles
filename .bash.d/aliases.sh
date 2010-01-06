alias apt-get='sudo apt-get'
alias apt-cache='sudo apt-cache'
alias df='df -h'
alias ll='ls -alh'
alias gerp='grep'
alias bi='vim'
alias vi='vim'
alias s='ssh -l root'
alias p='ping'
alias du='du -h'
alias c='clear'
alias irc="irssi -c www.stahnkage.com -p 4096 -w $FREENODE_PW"
alias yumy='yum -y'
alias Grep='grep'
alias add-props='svn propset svn:keywords "Id HeadURL Date Author"'
alias jwo="ssh stahnma@jameswhite.org"
alias nocomments='sed -e '\''s/#.*//'\''|grep .'

if [ `uname` = "Darwin" ] ; then
   alias ls='ls -G'
   alias ldd='otool -L' 
fi
