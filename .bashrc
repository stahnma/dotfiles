# .bashrc

# Specific Stuff for my environment
[ -f ~/.variables ] && . ~/.variables
[ -f $HOME/.cvsroot ] && . $HOME/.cvsroot
[ -f $HOME/.aws ] && . $HOME/.aws

# Source global definitions
[ -f /etc/bashrc ] && . /etc/bashrc

# Needed for visudo and svn
export EDITOR=vi

# My bash.d directory
for i in $HOME/.bash.d/* ; do
    if [ -r "$i" ]; then
        . $i
    fi
done

if [ -e "$HOSTNAME"] ; then 
    if [ "$HOSTNAME" = "$WORKSTATION" ] ; then 
      ps -ef | grep [s]ynergys &> /dev/null || /usr/bin/synergys --config $HOME/.synergy.conf
    fi
fi

# Resolver stuff

/usr/local/sbin/resolver.sh

PATH=$PATH:$HOME/bin
export PATHh
