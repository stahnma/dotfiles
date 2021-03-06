alias apt-get='sudo apt-get'
alias apt-cache='sudo apt-cache'
alias apt-file='sudo apt-file'
alias df='df -h'
alias ls='ls --color'
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
alias jwo="ssh stahnma@odin.websages.com"
alias nocomments='sed -e '\''s/#.*//'\''|grep .'
alias sl='ls'
alias shotgun='shotgun -o 0.0.0.0'
alias proxy='ssh -L 3128:localhost:3128  odin.websages.com'
alias rsync='rsync --progress'
alias gti='git'

if [ `uname` = "Darwin" ] ; then
   alias ls='ls -G'
   alias ldd='otool -L' 
   alias md5sum='md5'
fi

alias patchEnterptise='git format-patch -C -M -s -n --subject-prefix='PATCH/PuppetEnterprise' origin/master..HEAD'
alias patchAcceptance='git format-patch -C -M -s -n --subject-prefix='PATCH/PuppetAcceptance' origin/master..HEAD'
alias patchPuppet='git format-patch -C -M -s -n --subject-prefix='PATCH/Puppet' origin/master..HEAD'
