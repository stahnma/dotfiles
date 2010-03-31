# Resolver stuff

[ -f /usr/local/sbin/resolver.sh ] && sudo /usr/local/sbin/resolver.sh

if [ `uname` == "Darwin" ] ; then
   if (host x2.stahnkage.com 192.168.1.109 &> /dev/null) ; then 
     networksetup -setsearchdomains AirPort stahnkage.com websages.com
     networksetup -setdnsservers AirPort 192.168.1.109
     networksetup -setsearchdomains Ethernet stahnkage.com websages.com
     networksetup -setdnsservers Ethernet 192.168.1.109
   fi 
fi
