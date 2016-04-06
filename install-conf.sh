#! /bin/bash

RED="\033[31m"
LRED="\033[31;1m"
GREEN="\033[32m"
LGREEN="\033[32;1m"
RST="\033[0m"

INSTALL_PATH=$HOME
CONF_PATH=$(pwd)


# make_backup_if_exists $1=file
make_backup_if_exists ()
{
  local file=$1

  # Backup already exists
  if [ -e "$file.conf-backup" ]; then
    echo -e "${LRED}Backup file already exists, abort! Please fix this before installing!${RST}"
    exit 4
  fi

  # if the configuration file exists and is not a symlink, save it
  if [ -e "$file" -a ! -L "$file" ]; then
    mv "$file" "$file.conf-backup"
    echo -e "${LGREEN}[Backup] $file -> $file.conf-backup${RST}"
  # it's a simlink
  elif [ -e "$file" ]; then
    echo -e "${RED}File $file already exists and is a simlink. Abort before I break everything!${RST}"
    exit 3
  fi
}


# install_file $1=src $2=dst
install_file ()
{
  local src=$1
  local dst=$2

  make_backup_if_exists "$INSTALL_PATH/$dst"

  ln -s "$CONF_PATH/$src" "$INSTALL_PATH/$dst"
  if [ $? -eq 0 ]; then
    echo -e "${GREEN}$INSTALL_PATH/$dst -> $CONF_PATH/$src${RST}"
  else
    echo -e "${RED} Error simlinking file, exiting!${RST}"
    exit 2
  fi
}

if [ -z "$INSTALL_PATH" ]; then
  echo "Could not find home folder, is \$HOME variable set?"
  exit 1
fi

if [ -z "$CONF_PATH" ]; then
  echo "I should not be here"
  exit 42
fi


### GIT ###
install_file "git/gitconfig" ".gitconfig"

### VIM ###
install_file "vim/vimrc" ".vimrc"
install_file "vim/vim" ".vim"

### ZSH ###
install_file "zsh/zshrc" ".zshrc"
install_file "zsh/zsh" ".zsh"

