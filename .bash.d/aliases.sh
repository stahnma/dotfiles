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
#alias irc="irssi -c tyr.websages.com -p 4096 -w $FREENODE_PW"
alias yumy='yum -y'
alias Grep='grep'
#alias add-props='svn propset svn:keywords "Id HeadURL Date Author"'
alias jwo="ssh stahnma@odin.websages.com"
alias nocomments='sed -e '\''s/#.*//'\''|grep .'
alias sl='ls'
alias shotgun='shotgun -o 0.0.0.0'
alias proxy='ssh -L 3128:localhost:3128  odin.websages.com'

if [ `uname` = "Darwin" ] ; then
   alias ls='ls -G'
   alias ldd='otool -L' 
   alias md5sum='md5'
fi
