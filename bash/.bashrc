#
# .bashrc
#

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# set the umask, which controls the permissions on new files you create.
#   022 denies write access to other people, but not read access.
#   077 denies read and write access to other people.
umask 077

# You can create aliases for common commands.  The following line
# makes lls equivalent to 'ls -l'
alias lls='ls -l'
# make rm prompt before removing
alias rm='rm -i'

# 
#alias nvim='VIMRUNTIME=runtime ~/bin/nvim'
#alias vim=nvim
alias oldvim=\vim

alias sp24='mysql -h db.luddy.indiana.edu -u i308s24_ericwalk --password=my+sql=i308s24_ericwalk -D i308s24_ericwalk'


set -o vi

