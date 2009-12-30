WORKSTATIONS="mbplin olive duo mapplepro"
EDITOR=vim
PATH=$PATH:/bin
HISTFILESIZE=100000000
HISTSIZE=1000000
SHORTNAME=`hostname`
FQDN=""
UNAME=`uname`

if [ "$UNAME" = "Linux" ] ; then
  FQDN=`hostname --fqdn`
  SHORTNAME=`hostname -s`
fi



export WORKSTATION EDITOR PATH HISTFILESIZE HISTSIZE UNAME FQDN SHORTNAME
