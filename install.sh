sudo apt-get update
sudo apt-get install -y vim-nox curl git python python3 python3-dev lua5.2 liblua5.2-dev ruby2.7 clang-format
sudo apt-get install -y build-essential cmake libclang-dev libncurses-dev libz-dev xz-utils libpthread-workqueue-dev

# Vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp .vimrc ~/.vimrc

vim -c "PlugUpdate" -c "PlugInstall" -c "q!"
cd ~/.vim/plugged/YouCompleteMe
sudo python3 install.py --clang-completer
