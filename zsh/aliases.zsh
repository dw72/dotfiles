# ls color output
ls --color -d . &>/dev/null 2>&1 && alias ls='ls -h --color=tty' || alias ls='ls -hG'

alias dd="dd status=progress"

# photo rename
alias imgren2date="exiftool -r '-FileName<CreateDate' -d '%Y-%m-%d %H.%M.%S%%-c.%%le'"

# check my external ip address
alias checkip="dig +short myip.opendns.com @resolver1.opendns.com"

if [ $DISTRO = 'Arch' ]; then
  # remove orphan packages
  alias pacaur-clean-orphans="pacaur -Rs $(pacaur -Qqdt)"
fi

# Docker cleanup https://www.calazan.com/docker-cleanup-commands/
alias docker-killall='docker kill $(docker ps -q)'
alias docker-clean-containers='printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)'
alias docker-clean-images='printf "\n>>> Deleting untagged images\n\n" && docker rmi $(docker images -q -f dangling=true)'
alias docker-clean='docker-clean-containers || true && docker-clean-images'

# kill gnome-shell
alias gskill="kill -9 $(ps u | grep gnome-shell | head -1 | awk '{print $2}')"
