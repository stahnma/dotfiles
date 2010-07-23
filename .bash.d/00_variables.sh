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


export NPX_PLUGIN_PATH=/usr/lib/jvm/java-1.6.0-sun-1.6.0.20/jre/plugin/i386/ns7

export WORKSTATION EDITOR PATH HISTFILESIZE HISTSIZE UNAME FQDN SHORTNAME
