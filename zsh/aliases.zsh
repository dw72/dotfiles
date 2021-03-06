# ls color output
ls --color -d . &>/dev/null 2>&1 && alias ls='ls -h --color=tty' || alias ls='ls -hG'

alias dd="dd status=progress"

#samsung monitor
alias sam-auto-image="sudo ddcutil setvcp 1e 1; sudo ddcutil setvcp b0 1;"
alias sam-factory-defaults="sudo ddcutil setvcp 06 1; sudo ddcutil setvcp b0 1;"

# photo rename
alias exif2name="exiftool -r '-FileName<CreateDate' -d '%Y-%m-%d %H.%M.%S%%-c.%%le'"

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

# Run local eslint
alias eslint='npm run eslint'
