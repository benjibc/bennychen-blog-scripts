cp .jshintrc ~/
cp .vimrc ~/
sudo apt-get install git build-essential curl wget cmake
sudo npm install -g jshint
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
wget -O ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
cd ~/.vim/bundle/
git clone https://github.com/jelera/vim-javascript-syntax.git
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/Valloric/YouCompleteMe.git
git clone https://github.com/Lokaltog/vim-distinguished
cd YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer
