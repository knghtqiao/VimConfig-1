# create the symbolic link: "~/.vim/vimrc" -> "~/.vimrc"
ln -s ~/.vim/vimrc ~/.vimrc

# checkout the submodules to local
git submodule init
git submodule update
