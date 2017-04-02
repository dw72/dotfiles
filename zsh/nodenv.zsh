NODENV_ROOT=$HOME/.nodenv

NODENV_PLUGINS=(
  node-build
  nodenv-update
  nodenv-each
  nodenv-package-rehash
  nodenv-npm-migrate
)
# nodenv-default-packages

NODEENV_DEFAULT_PACKAGES="grunt-cli gulp-cli yarn yo"


[[ -d $NODENV_ROOT ]] || {
	git clone --depth 1 https://github.com/nodenv/nodenv.git $NODENV_ROOT
}

export PATH="$NODENV_ROOT/bin:$PATH"
eval "$(nodenv init --no-rehash -)"


for PLUGIN in $NODENV_PLUGINS; do
  [[ -d $NODENV_ROOT/plugins/$PLUGIN ]] || {
    git clone --depth 1 https://github.com/nodenv/$PLUGIN.git $NODENV_ROOT/plugins/$PLUGIN
  }

  case $PLUGIN in
    nodenv-default-packages)
      echo $NODEENV_DEFAULT_PACKAGES | tr ' ' '\n' > $NODENV_ROOT/default-packages
      ;;
    nodenv-package-rehash)
      nodenv package-hooks install --all
      ;;
  esac
done

unset NODENV_PLUGINS NODEENV_DEFAULT_PACKAGES
