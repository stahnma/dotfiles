# Figure out Path
# Basically, I like having a lot in my path, so I check the system path and
#  then apply what I like on top of it.
uname=`uname`
args="/usr/local/bin:/usr/local/sbin:$HOME/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/X11R6/bin:$HOME/.gem/ruby/1.8/bin"
aix_args="/opt/freeware/bin:/etc"
solaris_args="/usr/xpg4/bin"
hp_args=""
linux_args="/usr/kerberos/bin"
mac_args="/Developer/usr/bin:/opt/local/bin"

PATH="$args"
[ "$uname" = "Linux" ] && PATH=$linux_args:$PATH
[ "$uname" = "SunOS" ] && PATH=$solaris_args:$PATH
[ "$uname" = "AIX" ] && PATH=$aix_args:$PATH
[ "$uname" = "Darwin" ] && PATH=$mac_args:$PATH
[ "$uname" = "HPUX" ] && PATH=$hp_args:$PATH

export PATH
