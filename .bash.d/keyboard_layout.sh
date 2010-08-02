
if [ "$UNAME" = Linux ] ; then
  if ( which xmodmap &> /dev/null ) ; then 
    xmodmap -e "remove lock = Caps_Lock"
    xmodmap -e "add control = Caps_Lock"
  fi 
fi

