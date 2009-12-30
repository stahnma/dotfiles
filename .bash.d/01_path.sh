# Figure out Path
# Basically, I like having a lot in my path, so I check the system path and
#  then apply what I like on top of it.
args="/bin:/usr/bin:/usr/local/bin/:/sbin:/usr/sbin:/usr/local/sbin:/usr/X11R6/bin:~stahnma/bin"
aix_args="/opt/freeware/bin:/etc"
solaris_args="/usr/xpg4/bin"
hp_args=""
linux_args="/usr/kerberos/bin"
mac_args=""

PATH="$args"
[ "$uname" = "Linux" ] && PATH=$linux_args:$PATH
[ "$uname" = "SunOS" ] && PATH=$solaris_args:$PATH
[ "$uname" = "AIX" ] && PATH=$aix_args:$PATH
[ "$uname" = "Darwin" ] && PATH=$mac_args:$PATH
[ "$uname" = "HPUX" ] && PATH=$hp_args:$PATH

export PATH
