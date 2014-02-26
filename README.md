# Vim Plugins

## Install

First, git it!
<pre>
git clone git://github.com/choang/vim-config.git ~/.vim
</pre>

Once cloned, you need to update submodules
<pre>
cd ~/.vim
git submodule init
git submodule update
</pre>

Create a symlink for your vimrc
<pre>
ln -s ~/.vim/vimrc ~/.vimrc
</pre>

## Add plugins
```bash
cd ~/vim
git submodule add <git-repo> bundle/<plugin>
```

For example
```bash
git submodule add git://github.com/tpope/vim-endwise.git bundle/endwise
```

