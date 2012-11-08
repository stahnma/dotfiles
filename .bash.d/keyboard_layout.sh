
if [ "$UNAME" = Linux ] ; then
  if (which xmodmap &> /dev/null) ; then
    xmodmap -e "remove lock = Caps_Lock" &> /dev/null
    xmodmap -e "add control = Caps_Lock" &> /dev/null
  fi
fi

