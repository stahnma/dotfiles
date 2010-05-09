# Resolver stuff

[ -f /usr/local/sbin/resolver.sh ] && sudo /usr/local/sbin/resolver.sh

if [ `uname` == "Darwin" ] ; then
  if ( arp 192.168.1.1 | grep  0:16:b6:28:87:51  &> /dev/null ) ; then 
   networksetup -setsearchdomains AirPort stahnkage.com websages.com
   networksetup -setdnsservers AirPort 192.168.1.109
   networksetup -setsearchdomains Ethernet stahnkage.com websages.com
   networksetup -setdnsservers Ethernet 192.168.1.109
  fi 
fi
