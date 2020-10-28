### Purpose

This repository is made of settings and plugins for Vim that I liked and found useful. This git repo was originally intended with the aim of syncing my *dotfiles* between multiple Linux and Windows environments.

### Installation and usage

- **During the first installation**: clone the repository inside a chosen directory, then, for each file and directory, create a symbolic link pointing to it located in your home folder (`~` on Linux, or `C:\\users\\xxx` on Windows).

- **After each `git pull`**: open vim and execute `:PlugInstall` and `:PlugUpdate`

### Additional information

- `.gvimrc` is used only by my Windows environments. It sets the font to the Hack Nerd Font which has to be downloaded.

- The `clang_complete` plugin requires the clang toolchain (LLVM) to be installed in order to work properly. Also, you'll might need to edit the variable`g:clang_library_path` in `.vimrc`