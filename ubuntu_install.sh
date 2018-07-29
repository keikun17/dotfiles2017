#!/usr/bin/fish

function ec
    set_color $argv[1]
    echo $argv[2..-1]
    set_color normal
end

set dir (pwd)


ec magenta "sh: installing fish shell"
sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install fish


mv ~/.config/fish ~/.config/fish.old
ln -s $dir/config/fish ~/.config/fish
ec magenta "created softlinks from $dir/config/fish to ~/.config/fish"
ln -s $dir/config/git ~/.config/git
ec magenta "created softlinks from $dir/config/git to ~/.config/git"
ln -s $dir/config/heroku ~/.config/heroku
ec magenta "created softlinks from $dir/config/heroku to ~/.config/heroku"
ln -s $dir/config/nvim ~/.config/nvim
ec magenta "created softlinks from $dir/config/nvim to ~/.config/nvim"
ln -s $dir/config/omf ~/.config/omf
ec magenta "created softlinks from $dir/config/omf to ~/.config/omf"
ln -s $dir/config/tmux ~/.config/tmux
ln -s $dir/config/tmux/tmux.conf ~/.tmux.conf
ec magenta "created softlinks from $dir/config/tmux to ~/.config/tmux"
echo "created softlinks from $dir/config/ctags/ctags to ~/.ctags"
ln -s $dir/config/ctags/ctags ~/.ctags



echo "installing git"
sudo apt install git

ec magenta "installing linux brew"

sudo apt install build-essential
set ruby_install_script (curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)
ruby -e "$ruby_install_script"

source config/fish/config.d/paths.fish

ec magenta "sh: installing linuxbrew"
sudo apt install linuxbrew-wrapper
brew update
brew upgrade

ec magenta "brew : installing linux brew wrapper"
omf install linuxbrew

ec magenta "linuxbrew: installing gcc"
brew install gcc

ec magenta "installing Neovim"
sudo apt install python3-pip
brew install python@2
pip3 install --upgrade pip
pip3 install setuptools --user
pip3 install neovim --user

brew install neovim

ec magenta "sh/vim : installing vimplug"
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ec magenta "installing chruby,chruby-fish, ruby-install"
ec magenta "brew: installing rbenv"
brew install rbenv

# brew install chruby
# brew install chruby-fish
# brew install ruby-install


ec magenta "installing hub"

brew install hub

ec magenta "installing fzf"
brew install fzf
/home/linuxbrew/.linuxbrew/opt/fzf/install

ec magenta "installing silver searcher (ag)"
brew install the_silver_searcher

ec magenta "installing tmux"
brew install tmux

ec magenta "installing xclip"
brew install xclip

ec magenta "installing nvim"
brew install nvim
