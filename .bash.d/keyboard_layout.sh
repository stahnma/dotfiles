
if [ "$UNAME" = Linux ] ; then
  xmodmap -e "remove lock = Caps_Lock"
  xmodmap -e "add control = Caps_Lock"
fi

