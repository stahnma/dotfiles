WORKSTATIONS="mbplin olive duo mapplepro"
EDITOR=vim
PATH=$PATH:/bin
HISTFILESIZE=100000000
HISTSIZE=1000000
HOSTNAME=`hostname`
FQDN=""
UNAME=`uname`

if [ -f "$UNAME" = "Linux" ] ; then
  FQDN=`hostname --fqdn`
  HOSTNAME=`hostname -s`
fi



export WORKSTATION EDITOR PATH HISTFILESIZE HISTSIZE HOSTNAME UNAME FQDN
