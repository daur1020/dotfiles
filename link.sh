#!/bin/sh

dotfiles=$HOME/.dotfiles/files/

if [ -f $HOME/.bash_profile ] && [ ! -L $HOME/.bash_profile ] ; then
    mv $HOME/.bash_profile $HOME/.bash_profile~
fi
ln -s $dotfiles/bash_profile $HOME/.bash_profile

if [ -f $HOME/.bashrc ] && [ ! -L $HOME/.bashrc ] ; then
    mv $HOME/.bashrc $HOME/.bashrc~
fi
ln -s $dotfiles/bashrc $HOME/.bashrc

if [ -d $HOME/.git ] && [ ! -L $HOME/.git ]; then
    mv $HOME/.git $HOME/.git~
fi
if [ ! -d $HOME/.git ]; then
    ln -s $dotfiles/git $HOME/.git
fi

if [ -f $HOME/.gitconfig ] && [ ! -L $HOME/.gitconfig ]; then
    mv $HOME/.gitconfig $HOME/.gitconfig~
fi
ln -s $dotfiles/gitconfig $HOME/.gitconfig

if [ -f $HOME/.gitignore ] && [ ! -L $HOME/.gitignore ]; then
    mv $HOME/.gitignore $HOME/.gitignore~
fi
ln -s $dotfiles/gitignore $HOME/.gitignore

if [ -f $HOME/.rspec ] && [ ! -L $HOME/.rspec ]; then
    mv $HOME/.rspec $HOME/.rspec~
fi
ln -s $dotfiles/rspec $HOME/.rspec

if [ -f $HOME/.selected_editor ] && [ ! -L $HOME/.selected_editor ]; then
    mv $HOME/.selected_editor $HOME/.selected_editor~
fi
ln -s $dotfiles/selected_editor $HOME/.selected_editor

if [ -f $HOME/.sudo_as_admin_successful ] && [ ! -L $HOME/.sudo_as_admin_successful ]; then
    mv $HOME/.sudo_as_admin_successful $HOME/.sudo_as_admin_successful~
fi
ln -s $dotfiles/sudo_as_admin_successful $HOME/.sudo_as_admin_successful

if [ -d $HOME/.vim ] && [ ! -L $HOME/.vim ]; then
    mv $HOME/.vim $HOME/.vim~
fi
if [ ! -d $HOME/.vim ]; then
    ln -s $dotfiles/vim $HOME/.vim
fi

if [ -f $HOME/.vimrc ] && [ ! -L $HOME/.vimrc ]; then
    mv $HOME/.vimrc $HOME/.vimrc~
fi
ln -s $dotfiles/vimrc $HOME/.vimrc
