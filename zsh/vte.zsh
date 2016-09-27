# Fix Terminix VTE Configuration Issue. See: https://github.com/gnunn1/terminix/wiki/VTE-Configuration-Issue
if [[ $TERMINIX_ID ]]; then
  source /etc/profile.d/vte.sh
fi
