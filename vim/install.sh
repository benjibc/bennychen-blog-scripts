cp .jshintrc ~/
cp .vimrc ~/
sudo apt-get install git build-essential curl
sudo npm install -g jshint
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
cd ~/.vim/bundle/
git clone https://github.com/jelera/vim-javascript-syntax.git
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/Valloric/YouCompleteMe.git
git clone https://github.com/Lokaltog/vim-distinguished
cd YouCompleteMe
cd third_party
git submodule update --init --recursive
cd ..
./install.sh --clang-completer
