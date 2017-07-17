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
if [[ -f $HOME/.config/nvim/init.vim ]]; then
  rm ~/.config/nvim/init.vim
fi

# link new dot files
mkdir -p ~/.config/nvim
ln -s ~/.dotfiles/vim/vimrc ~/.config/nvim/init.vim
ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
