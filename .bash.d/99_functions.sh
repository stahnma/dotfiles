is_workstation()
{
  for ws_name in $WORKSTATIONS
  do
    if [ "$HOSTNAME" == "$ws_name" ] ; then
       return true;
    fi
    return false;
  done
}

