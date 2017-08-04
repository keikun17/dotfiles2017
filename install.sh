#!/bin/bash

dir=$(pwd)


ln -s $dir/config/fish ~/.config/fish
echo "created softlinks from $dir/config/fish to ~/.config/fish"
ln -s $dir/config/git ~/.config/git
echo "created softlinks from $dir/config/git to ~/.config/git"
ln -s $dir/config/heroku ~/.config/heroku
echo "created softlinks from $dir/config/heroku to ~/.config/heroku"
ln -s $dir/config/nvim ~/.config/nvim
echo "created softlinks from $dir/config/nvim to ~/.config/nvim"
ln -s $dir/config/omf ~/.config/omf
echo "created softlinks from $dir/config/omf to ~/.config/omf"
ln -s $dir/config/tmux ~/.config/tmux
ln -s $dir/config/tmux/tmux.conf ~/.tmux.conf
echo "created softlinks from $dir/config/tmux to ~/.config/tmux"


echo "installing Neovim"
apt install python3-pip
pip install --upgrade pip
pip3 install setuptools --user
pip3 install neovim --user

brew install neovim

echo "installing git"
apt install git

echo "installing linux brew"

apt install build-essential
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"

echo "installing gcc"
brew install gcc

echo "installing chruby"

brew install chruby
brew install chruby-fish

echo "installing hub"

brew install hub

echo "installing fzf"
brew install fzf
/home/linuxbrew/.linuxbrew/opt/fzf/install

echo "installing silver searcher (ag)"
brew install the_silver_searcher

echo "installing tmux"
brew install tmux
