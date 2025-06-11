#    _               _
#   | |__   __ _ ___| |__  _ __ ___
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__
# (_)_.__/ \__,_|___/_| |_|_|  \___|
#
# -------------------------------------------------------------------------------

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# -------------------------------------------------------------------------------

# give bash some colors
# RED="\e[38;2;222;50;76m"
# YELLOW="\e[38;2;248;225;111m"
# BLUE="\e[38;2;54;154;204m"
RED="\e[38;5;197m"
ORANGE="\e[38;5;216m"
YELLOW="\e[38;5;229m"
GREEN="\e[38;5;151m"
BLUE="\e[38;5;74m"
PURPLE="\e[38;5;133m"

RED="\e[38;2;222;50;76m"
ORANGE="\e[38;2;244;137;95m"
YELLOW="\e[38;2;248;225;111m"
GREEN="\e[38;2;149;207;146m"
BLUE="\e[38;2;54;154;204m"
PURPLE="\e[38;2;150;86;162m"

# load git prompt helper
if [ -f /usr/share/git/completion/git-prompt.sh ]; then
    GIT_PS1_SHOWDIRTYSTATE=1
    GIT_PS1_SHOWSTASHSTATE=1
    GIT_PS1_SHOWUNTRACKEDFILES=1
    GIT_PS1_SHOWUPSTREAM="auto"
    source /usr/share/git/completion/git-prompt.sh
fi

# PS1="\d \t [\u@\h \w\$(__git_ps1 ' (%s)')]\n\$ "
PS1="${RED}[\u] ${ORANGE}[\h] ${YELLOW}[\w] ${GREEN}[\$(__git_ps1 '%s')] ${PURPLE}[\d \t]\n${BLUE}\$ "

# -------------------------------------------------------------------------------

# some aliases
alias grep='grep --color=auto'
alias lst='(ls -ldh --color=always --group-directories-first .?* 2>/dev/null;\
    ls -lh --color=always --group-directories-first 2>/dev/null | grep -v "^\.")'
alias upgrade='sudo pacman -Syu && yay -Syu'
