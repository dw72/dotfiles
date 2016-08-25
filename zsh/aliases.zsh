# btrfs snapshot root filesystem
alias snapshot-root='sudo btrfs subvolume snapshot -r /run/btrfs-root/__current/ROOT /run/btrfs-root/__snapshot/ROOT@`date "+%Y%m%d-%H%M%S"`'

# photo rename
alias exif-rename="exiftool -r '-FileName<CreateDate' -d '%Y-%m-%d %H.%M.%S%%-c.%%le'"

# check my external ip address
alias checkip="dig +short myip.opendns.com @resolver1.opendns.com"
