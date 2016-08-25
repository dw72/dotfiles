if [[ ! -d $HOME/.composer && -d $HOME/.config/composer ]]; then
  ln -s $HOME/.config/composer $HOME/.composer
fi
