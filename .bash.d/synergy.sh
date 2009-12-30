
if [ -n "$WORKSTATION" ] ; then
    if [ "$HOSTNAME" = "$WORKSTATION" ] ; then
      ps -ef | grep [s]ynergys &> /dev/null || /usr/bin/synergys --config $HOME/.synergy.conf &> /dev/null
    fi
fi

