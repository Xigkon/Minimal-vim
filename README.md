# Minimal vim
 My minamal .vimrc, include basic config and auto-pairs, No plugin required
+ \<C\-a\> 复制所有到剪贴，无法使用请```sudo apt-get install vim-gtk```
+ \<C\-c\> 复制可视模式已选择的文本
+ \<C\-l\> 在插入模式下，相当于右键
+ \<C\-h\> 插入模式下删除前一个字符
+ \<C\-k\> 插入模式下回到普通模式
## 需要安装的插件
1. Vundle插件管理器
```
sudo apt-get install vim-gtk
```
然后```vim ~/.vimrc```,加入一下内容
```
set nocompatible              " be iMproved, required
filetype off                  " required
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Bundle 'Auto-Pairs'
Plugin 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
```
2. 安装```Auto-pairs```
命令行运行```vim +PluginInstall +qall```
