call plug#begin('~/.vim/plugged')

Plug 'rust-lang/rust.vim'
Plug 'zah/nim.vim'
Plug 'nvie/vim-flake8'
Plug 'altercation/vim-colors-solarized'
Plug 'ervandew/supertab'
Plug 'vim-scripts/c.vim'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'jistr/vim-nerdtree-tabs'

call plug#end()

let g:nerdtree_tabs_open_on_console_startup=1
