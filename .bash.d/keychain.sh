
is_workstation
if [ $? = 0 ] ; then 
   # ennumerate all the -sh options
   local chains=`ls $HOME/.keychain/*-sh`
   for file in $chains
   do
      . $file
   done
   [ -z "$chains" ] && keychain $HOME/.ssh/id_dsa 
fi

