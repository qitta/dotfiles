dotfiles
========

Some cute dotfiles.

Installation
------------
- git clone git@github.com:qitta/dotfiles.git ~/.dotfiles
- cd ~/.dotfiles
- git submodule init
- git submodule update

Update all submodules to latest version
--------------------------------------
- git submodule foreach git pull origin master

Notes for Command-T Plugin
--------------------------
- cd ~/.vim/bundle/command-t/ruby/command-t/ 
- ruby extconf.rb 
- make 

Setting up vim
---------------
- ln -s ~/.dotfiles/vim ~/.vim
- ln -s ~/.dotfiles/vimrc ~/.vimrc

Happy hacking :)
