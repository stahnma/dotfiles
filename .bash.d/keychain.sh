
# ennumerate all the -sh options
ls $HOME/.keychain*-sh &> /dev/null  || return 0

chains=`ls $HOME/.keychain/$(hostname)-sh`
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
if $(which gpg-agent &> /dev/null); then 
  eval $(gpg-agent --daemon)
fi
