is_workstation()
{
  for ws_name in $WORKSTATIONS
  do
    if [ "$HOSTNAME" == "$ws_name" ] ; then
       return 0; # no error
    fi
    return 1; # error
  done
}

