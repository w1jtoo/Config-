call plug#begin('~/.vim/plugged')

Plug 'rust-lang/rust.vim'
Plug 'baabelfish/nvim-nim'
Plug 'davidhalter/jedi-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'ervandew/supertab'
Plug 'vim-scripts/c.vim'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'jistr/vim-nerdtree-tabs'

call plug#end()

let g:nerdtree_tabs_open_on_console_startup=1
