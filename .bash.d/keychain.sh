if ls $HOME/.keychain/$(hostname)-sh &> /dev/null ; then
  chains=`ls $HOME/.keychain/$(hostname)-sh`
  for file in $chains
  do
      . $file
  done

  if which keychian &> /dev/null ; then
    if [ -f "$HOME/.ssh/id_dsa" ] ; then
      [ -z "$chains" ] && keychain $HOME/.ssh/id_dsa
    fi

    if [ -f "$HOME/.ssh/id_rsa" ] ; then
      [ -z "$chains" ] && keychain $HOME/.ssh/id_rsa
    fi
  fi
fi

#GPG Agent
if $(which gpg-agent &> /dev/null); then 
  eval $(gpg-agent --daemon)
fi
