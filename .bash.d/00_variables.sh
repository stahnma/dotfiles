WORKSTATIONS="mbplin olive duo mapplepro"
EDITOR=vim
HISTFILESIZE=100000000
HISTSIZE=1000000
SHORTNAME=`hostname`
FQDN=""
UNAME=`uname`
HISTIGNORE=clear:c

if [ "$UNAME" = "Linux" ] ; then
  FQDN=`hostname --fqdn`
  SHORTNAME=`hostname -s`
fi


export NPX_PLUGIN_PATH=/usr/lib/jvm/java-1.6.0-sun-1.6.0.20/jre/plugin/i386/ns7

export WORKSTATION EDITOR HISTFILESIZE HISTSIZE UNAME FQDN SHORTNAME HISTIGNORE
