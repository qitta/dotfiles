dotfiles
========

Some cute dotfiles.

Installation
------------
- git clone git@github.com:qitta/dotfiles.git ~/.dotfiles
- cd ~/.dotfiles
- git submodule init
- git submodule update

Update all submodules to latest verion
--------------------------------------
- git submodule foreach git pull origin master

Setting up vim
---------------
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/vimrc ~/.vimrc

Happy hacking :)
