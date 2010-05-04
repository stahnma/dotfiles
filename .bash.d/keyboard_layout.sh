
if [ "$UNAME" = Linux ] ; then
  if ( which xmodmpa &> /dev/null ) ; then 
    xmodmap -e "remove lock = Caps_Lock"
    xmodmap -e "add control = Caps_Lock"
  fi 
fi

