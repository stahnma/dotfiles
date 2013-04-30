# .bashrc
# Source global definitions
[ -f /etc/bashrc ] && . /etc/bashrc

# My bash.d directory
for i in $HOME/.bash.d/* ; do
    if [ -r "$i" ]; then
        . $i
    fi
done
[ -f /opt/boxen/env.sh ] && . /opt/boxen/env.sh
