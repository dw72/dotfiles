NODENV_HOME=$HOME/.nodenv
NODENV_PLUGINS=$HOME/.nodenv/plugins

[[ -d $NODENV_HOME ]] || {
	git clone --depth 1 https://github.com/nodenv/nodenv.git $NODENV_HOME
}

[[ -d $NODENV_PLUGINS/node-build ]] || {
  git clone --depth 1 https://github.com/nodenv/node-build.git $NODENV_PLUGINS/node-build
}
[[ -d $NODENV_PLUGINS/nodenv-update ]] || {
  git clone --depth 1 https://github.com/nodenv/nodenv-update.git $NODENV_PLUGINS/nodenv-update
}

export PATH="$NODENV_HOME/bin:$PATH"
eval "$(nodenv init --no-rehash -)"
