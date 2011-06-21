
# ennumerate all the -sh options
chains=`ls $HOME/.keychain/*-sh`
for file in $chains
do
    . $file
done

if [ -f "$HOME/.ssh/id_dsa" ] ; then 
   [ -z "$chains" ] && keychain $HOME/.ssh/id_dsa 
fi

if [ -f "$HOME/.ssh/id_rsa" ] ; then 
   [ -z "$chains" ] && keychain $HOME/.ssh/id_rsa 
fi

#GPG Agent 
eval $(gpg-agent --daemon)
