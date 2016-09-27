# http://unix.stackexchange.com/questions/119/colors-in-man-pages
# http://unix.stackexchange.com/questions/108699/documentation-on-less-termcap-variables
# http://wiki.bash-hackers.org/scripting/terminalcodes
#
export LESS_TERMCAP_mb=$(tput setaf 1) # red
export LESS_TERMCAP_md=$(tput setaf 2) # green
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_so=$(tput smso) 
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
export LESS_TERMCAP_us=$(tput bold; tput dim; tput setaf 3) # yellow
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
export LESS_TERMCAP_mr=$(tput rev)
export LESS_TERMCAP_mh=$(tput dim)
export LESS_TERMCAP_ZN=$(tput ssubm)
export LESS_TERMCAP_ZV=$(tput rsubm)
export LESS_TERMCAP_ZO=$(tput ssupm)
export LESS_TERMCAP_ZW=$(tput rsupm)
