#!/bin/zsh

# Change shell for current user to zsh
if [ ! "$SHELL" = "/bin/zsh" ]; then
  chsh -s /bin/zsh
fi

# remove old dot files
if [[ -f $HOME/.gitconfig ]]; then
  rm ~/.gitconfig
fi
if [[ -f $HOME/.zshrc ]]; then
  rm ~/.zshrc
fi

# link new dot files
ln ~/.dotfiles/git/gitconfig ~/.gitconfig
ln ~/.dotfiles/zsh/zshrc ~/.zshrc
