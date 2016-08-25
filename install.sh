#!/bin/zsh

# Change shell for current user to zsh
if [ ! "$SHELL" = "/bin/zsh" ]; then
  chsh -s /bin/zsh
fi

# remove old dot files
rm ~/.gitconfig
rm ~/.zshrc

# link new dot files
ln ~/.dotfiles/git/gitconfig ~/.gitconfig
ln ~/.dotfiles/zsh/zshrc ~/.zshrc
