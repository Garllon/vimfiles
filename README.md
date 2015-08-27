vim Installation
==
Prerequisites 
---

Configure your Git
[Config Git](https://git-scm.com/book/tr/v2/Customizing-Git-Git-Configuration)

Install brew
[brew](http://brew.sh/)

Install vim
---
... as we need it.

```
# do once:
mkdir ~/code
cd ~/code

hg clone https://vim.googlecode.com/hg/ vim
cd vim

# do regularly
cd ~/code/vim
hg pull
hg update
make distclean
./configure --with-x --enable-fail-if-missing --enable-rubyinterp=dynamic --enable-multibyte --enable-fontset --enable-gui=gtk2 --enable-gtk2-check --enable-gnome-check --enable-motif-check --with-features=huge --with-compiledby=Hendrik Bergunde --with-gnome --enable-pythoninterp=dynamic --enable-python3interp=dynamic --enable-perlinterp=yes
make
sudo make install

# make sure everythin worked well:
# does the following command show a very recent version of vim?
# (i.e. not your distro's package version)
vim --version
```

Install vim configuration
---

```
git clone --branch=master https://github.com/garllon/vimfiles.git ~/.vim
cp ~/.vimrc ~/.vimrc.old ; ln -sf ~/.vim/vimrc ~/.vimrc
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~/.vim
./update_bundles.sh
```
