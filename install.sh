#!/bin/bash
# Script to create symlinks :)
# date: 12/1/24 (its the first one the month)

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="bashrc vimrc tmux starship.toml"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    if [ "$file" == "starship" ]; then
        echo "creating ~/.config/starship.toml"
        touch ~/.config/starship.toml
        ln -s ~/dotfiles/starship.toml ~/.config/starship.toml
    else
        echo "Moving any existing dotfiles from ~ to $olddir"
        mv ~/.$file ~/dotfiles_old/
        echo "Creating symlink to $file in home directory."
        ln -s $dir/$file ~/.$file
    fi
done

# Install vim-plugin, starship, tmux
echo "Installing starship"
curl -sS https://starship.rs/install.sh | sh

echo "Installing Vim-Plugin"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Install Tmux"
sudo pacman -Syu
sudo pacman -S tmux
