sudo apt-get update
sudo apt-get install -y vim-nox curl git python python3 python3-dev lua5.2 liblua5.2-dev ruby2.7 clang-format clangd
sudo apt-get install -y build-essential cmake libclang-dev libncurses-dev libz-dev xz-utils libpthread-workqueue-dev nodejs npm

ln -s "$PWD/.vimrc" ~/.vimrc
ln -s "$PWD/.vim" ~/.vim

vim -c "PlugUpdate" -c "PlugInstall" -c "qa!"
vim -c "CocInstall coc-clangd coc-flutter" -c "qa!"
