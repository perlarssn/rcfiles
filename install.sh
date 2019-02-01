rm ~/.vim;
rm ~/.vimrc;
rm ~/.Xresources;
rm ~/.bashrc;
ln -s `pwd`/_vim ../.vim;
ln -s `pwd`/_vimrc ../.vimrc;
ln -s `pwd`/_Xresources ../.Xresources;
ln -s `pwd`/_bashrc ../.bashrc;
git clone https://github.com/scrooloose/nerdtree.git _vim/bundle/nerdtree
