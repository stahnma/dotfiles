# Resolver stuff

[ -f /usr/local/sbin/resolver.sh ] && sudo /usr/local/sbin/resolver.sh

if [ `uname` == "Darwin" ] ; then
   networksetup -setsearchdomains AirPort stahnkage.com websages.com
   networksetup -setdnsservers "AirPort" 192.168.1.109
fi
