filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif 

call neobundle#begin(expand("~/.vim/bundle"))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'davidhalter/jedi-vim'
call neobundle#end()

filetype plugin indent on



:syntax on
filetype on            " enables filetype detection
filetype plugin on     " enables filetype specific plugins
:set spell

