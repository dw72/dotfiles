# Fix Terminix VTE Configuration Issue. See: https://github.com/gnunn1/terminix/wiki/VTE-Configuration-Issue
if [[ -f /etc/profile.d/vte.sh ]]; then
  source /etc/profile.d/vte.sh
fi
