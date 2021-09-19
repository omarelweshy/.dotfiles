# .dotfiles

## Steps to bootstrap a new OS

1. Clone repo into new hidden directory.

```zsh
# SSH
git clone git@github.com:omarelweshy/.dotfiles.git ~/.dotfiles

# HTTPS
git clone https://github.com/omarelweshy/.dotfiles.git ~/.dotfiles
```

2. Create symlinks in the Home directory to the real files in the repo.

```zsh
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.npmrc ~/.npmrc
ln -s ~/.dotfiles/nvim ~/.config/nvim
```
