## Colorize the ls output ##
alias ls='ls -G'

## Use a long listing format ##
alias ll='ls -la'

## get rid of command not found ##
alias cd..='cd ..'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../../'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#Tmux Config
export LC_ALL=en_IN.UTF-8
export LANG=en_IN.UTF-8
# mv, rm, cp
alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'

#Git Alias
alias gs='git status'
alias gb='git branch'
alias gitcommitsigned='git commit -Sm '
