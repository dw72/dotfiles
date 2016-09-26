alias dd="dd status=progress"

# photo rename
alias imgren2date="exiftool -r '-FileName<CreateDate' -d '%Y-%m-%d %H.%M.%S%%-c.%%le'"

# check my external ip address
alias checkip="dig +short myip.opendns.com @resolver1.opendns.com"

# remote desktop
alias mstsc="rdesktop -z -PKD -g 1200x720 -k pl -5 -r clipboard:CLIPBOARD -d ZSP2 -u Administrator"
