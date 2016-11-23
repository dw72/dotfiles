# ls color output
ls --color -d . &>/dev/null 2>&1 && alias ls='ls --color=tty' || alias ls='ls -G'

alias dd="dd status=progress"

# photo rename
alias imgren2date="exiftool -r '-FileName<CreateDate' -d '%Y-%m-%d %H.%M.%S%%-c.%%le'"

# check my external ip address
alias checkip="dig +short myip.opendns.com @resolver1.opendns.com"

# remove orphan packages
alias pacaur-clean-orphans="pacaur -Rs $(pacaur -Qqdt)"
