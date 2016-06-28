vim Installation
==
Install vim
---
... as we need it.

```
# do once:
sudo apt-get install vim-gtk

# make sure everythin worked well:
# does the following command show a very recent version of vim?
# (i.e. not your distro's package version)
vim --version
```

Install vim configuration
---

```
git clone --branch=master https://github.com/garllon/vimfiles.git ~/.vim
# if you want hold your old vimrc
cp ~/.vimrc ~/.vimrc.old; ln -sf ~/.vim/vimrc ~/.vimrc
# or jump to this part
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~/.vim
./update_bundles.sh
```

Extra Tools
---

For the AG Plugin you need the [Silver Searcher](https://github.com/ggreer/the_silver_searcher).

Installing for Ubuntu
```
sudo apt-get install silversearcher-ag
```
