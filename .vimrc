set nocompatible
set history=1000
set cursorline
hi cursorline guibg=#00ff00
hi CursorColumn guibg=#00ff00
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set sw=4
set ruler
set nu
set go=
set lz
set magic
set noerrorbells
set showmatch
set mat=1
set scrolloff=3
set hlsearch
set incsearch
set noic
set encoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8
set smartindent
set cin
set showmatch
set confirm
set nobackup
set noswapfile
map <C-A> ggVG"+y
map <C-c> "+y
inoremap <c-l> <right>
inoremap <c-k> <esc>
set completeopt=preview,menu

map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -std=c++17 -o %<"
		exec "!time ./%<"
	elseif &filetype == 'java' 
		exec "!javac %" 
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		exec "!time python3 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
	endif
endfunc

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
