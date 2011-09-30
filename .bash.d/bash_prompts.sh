# .bash_prompts

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
}

normal_prompt()
{
   PS1="\u@\h \w > "
}

color_prompt()
{
    PS1="[\$?] ${ePL}\u@\h ${eBL}"'\w'"${GY}"'$(parse_git_branch)'"${eBL}> ${NRML}"
}

# Special prompt for Ubuntu/Debian
deb_prompt()
{
    PS1="[\$?] ${BR}\u@\h ${eBL}"'\w'"${GY}"'$(parse_git_branch)'"${BR}> ${NRML}"
}

mac_prompt()
{
    PS1="[\$?] ${eWT}\u@\h ${eBL}"'\w'"${GY}"'$(parse_git_branch)'"${PL}> ${NRML}"
}


# Prompt Goodness
HOSTNAME=`hostname`
BK="\[\O33[0;30m\]"        # black
BL="\[\033[0;34m\]"        # blue
GR="\[\033[0;32m\]"        # green
CY="\[\033[0;36m\]"        # cyan
RD="\[\033[0;31m\]"        # red
PL="\[\033[0;35m\]"        # purple
BR="\[\033[0;33m\]"        # brown
GY="\[\033[1;30m\]"        # grey
# enhanced
eGY="\[\033[0;37m\]"       # light gray
eBL="\[\033[1;34m\]"       # light blue
eGR="\[\033[1;32m\]"       # light green
eCY="\[\033[1;36m\]"       # light cyan
eRD="\[\033[1;31m\]"       # light red
ePL="\[\033[1;35m\]"       # light purple
eYW="\[\033[1;33m\]"       # yellow
eWT="\[\033[1;37m\]"       # white
# reset to teminal default
NRML="\[\033[0;0m\]"       # normal term color

if [ -f "/etc/debian_version" ] ; then
  deb_prompt
elif [ `uname` = "Darwin" ] ; then
  mac_prompt
else
  color_prompt
fi

if [ `uname` == "Darwin" ] ; then
   export LSCOLORS=dxfxcxdxbxegedabagacad 
fi

export PS1


# The tab header in iTerm
export PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME%%.*} \007"'
