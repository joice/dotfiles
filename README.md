# brennovich dotfiles

Focused simple dotfiles for OSX ruby developers based on thoughtbots dotfiles.

## Features

- Fully featured vim configuration (extracted from YADR)

## Instalation

```shell
git clone git://github.com/brennovich/dotfiles.git
cd dotfiles
./install
```

### YADR VIM Files

1. Install Vundle:

```shell
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

2. Install your bundle:

```shell
vim +BundleInstall +qall
```

- Clean bash_profile
- Nice git stuff
- `gemrc` install gem without docs
