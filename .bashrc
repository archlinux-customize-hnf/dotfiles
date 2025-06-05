#    _               _
#   | |__   __ _ ___| |__  _ __ ___
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__
# (_)_.__/ \__,_|___/_| |_|_|  \___|
#
# ---------------------------------------------------------------------

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ---------------------------------------------------------------------

# give bash some colors
RED="\e[38;2;222;50;76m"
YELLOW="\e[38;2;248;225;111m"
BLUE="\e[38;2;54;154;204m"

# load git prompt helper
if [ -f /usr/share/git/completion/git-prompt.sh ]; then
    GIT_PS1_SHOWDIRTYSTATE=1
    GIT_PS1_SHOWSTASHSTATE=1
    GIT_PS1_SHOWUNTRACKEDFILES=1
    GIT_PS1_SHOWUPSTREAM="auto"
    source /usr/share/git/completion/git-prompt.sh
fi

PS1="${YELLOW}\t ${RED}[\u@\h \w\$(__git_ps1 ' (%s)')]${BLUE}\n\$ "

# ---------------------------------------------------------------------

# some aliases
alias grep='grep --color=auto'
alias lst='(ls -ld --color=always -h --group-directories-first .?*;\
    ls -l --color=always -h --group-directories-first | grep -v "^\.")'

