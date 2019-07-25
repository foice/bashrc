# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export PATH="$HOME"/tmux:/opt/rh/devtoolset-6/root/usr/bin/:"$PATH":"$HOME"/scriptbelt:"$HOME"/humanroot/utils/MGscripts/:/home/roberto/python370/bin:
export PYTHONPATH=$PYTHONPATH:$PATH:~/scriptbelt/python/:~/humanroot/utils/PyLHEanalysis:
export PYTHONPATH=$ROOTSYS/lib:$PYTHONPATH


alias mktmux='tmux new -s '
alias py='source ~/scriptbelt/python/py27enable /opt/rh/python27/root/usr/'
alias which_linux='cat /etc/*-release'
alias make_listall='make -qp | awk -F":" "/^[a-zA-Z0-9][^$#\/\t=]*:([^=]|$)/ {split(\$1,A,/ /);for(i in A)print A[i]}"'
alias make_listsome="make -pn | perl -F: -ane 'print \"$F[0]\n\" if /^\w+\s*:/' | sort"
alias devsudo="sudo -HE env PATH=\$\{PATH\} LD_LIBRARY_PATH=\$\{LD_LIBRARY_PATH\} PYTHONPATH=\$\{PYTHONPATH\}"
alias hw="source ~/p/hw7/bin/activate"
alias ls="ls -G --color"
alias ll="ls -lG --color"
alias la="ls -a --color"
alias l="ls -lrth "
alias lo="l ./output"
alias sl="ls"
alias lt="l | tail"
alias llt="ls -lrth | tail"
alias t="tail"
alias lq="l ~/.tmux/resurrect/last"
alias lss="ls -lSrs"
alias bw="bjobs -w"
alias bj="bjobs -w"
alias bjs="bjobs"
alias b="bjobs"
alias bq="bqueues -u rfrances"
alias v="viw.sh"
alias xcu="xcu.sh"
alias viw="viw.sh"
alias dp="dumbplot.sh"
alias svn_diff='svn diff --diff-cmd /usr/bin/diff -x "-i -b" '
alias svn_peek='svn status --show-updates'
alias web_start='twistd web --path . --port tcp:8000' 
####
alias lsc="ls ~/humanroot/utils/MGscripts/cuts"
alias lr="loopydo.sh human_wrap.sh  \"ls -rt -c1 *.root\""
######
alias dush="duh.sh"
alias p="parallel --will-cite"
alias lsb='du --max-depth=1 | sort -n | cut -f2 | while read f ; do du --max-depth=0 -h "$f" ; done'
alias less="less -R"
alias h='history'
alias g='grep'

# User specific aliases and functions
DEFAULT="\[\033[0m\]"
BOLD="\[\033[1m\]"
DIM="\[\033[2m\]"
UNDERLINE="\[\033[4m\]"
BLINK="\[\033[5m\]"
REVERSE="\[\033[7m\]"
HIDDEN="\[\033[8m\]"

BOLD_C="\[\033[22m\]"
UNDERLINE_C="\[\033[24m\]"
BLINK_C="\[\033[25m\]"
REVERSE_C="\[\033[27m\]"
COLOR_C="\[\033[29m\]"

BLACK="\[\033[30m\]"
RED="\[\033[31m\]"
GREEN="\[\033[32m\]"
YELLOW="\[\033[33m\]"
BLUE="\[\033[34m\]"
MAGENTA="\[\033[35m\]"
CYAN="\[\033[36m\]"
WHITE="\[\033[37m\]"

BLACK_B="\[\033[40m\]"
RED_B="\[\033[41m\]"
GREEN_B="\[\033[42m\]"
YELLOW_B="\[\033[43m\]"
BLUE_B="\[\033[44m\]"
MAGENTA_B="\[\033[45m\]"
CYAN_B="\[\033[46m\]"
WHITE_B="\[\033[47m\]"

 PS1="[$RED\d \A$RED_C]
$DEFAULT$BLUE$BOLD\u$DEFAULT@$BLUER\H:/$DEFAULT$BOLD_C$RED\w
$DEFAULT$DEFAULT\n\W$BOLD>$BOLD_C"

 PS1="[$MAGENTA\d \A$RED_C]
$DEFAULT$GREEN$BOLD\u$DEFAULT@$BLUER\H:$DEFAULT$BOLD_C$MAGENTA\w
$DEFAULT$DEFAULT\n\W$BOLD>$BOLD_C"

alias j='jupyter notebook --no-browser --port=8889'

alias head1pg='head -"$((`tput lines`-5))"'

alias tt="tokens"
alias t="tail"
alias h="history"
alias ht="history | tail -20"


export LANG=en_US.utf8
export LC_ALL=en_US.utf8



