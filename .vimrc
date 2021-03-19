filetype plugin indent on 
syntax on
set hidden
set backspace=indent,eol,start

" Show spaces and tabs:
" set listchars=tab:>-
set listchars=tab:~-,space:·,eol:$
set list

call plug#begin('~/.vim/plugged')

" rust plugin
Plug 'rust-lang/rust.vim'

" nim plugin:
Plug 'baabelfish/nvim-nim'

" auto save:
" Plug '907th/vim-auto-save'

Plug 'davidhalter/jedi-vim'
" Plug 'altercation/vim-colors-solarized'
Plug 'ervandew/supertab'
" C
Plug 'vim-scripts/c.vim'

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" git utils
Plug 'airblade/vim-gitgutter'

Plug 'kien/ctrlp.vim'

" Tree show
Plug 'jistr/vim-nerdtree-tabs'

" current word highlight
Plug 'dominikduda/vim_current_word'

" git status in column
Plug 'airblade/vim-gitgutter'

" error show
Plug 'scrooloose/syntastic'

" csharp plugin
Plug 'omnisharp/omnisharp-vim'

" hex editor plugin
Plug 'fidian/hexmode'

" url underline
Plug 'itchyny/vim-highlighturl'

Plug 'LucHermitte/lh-vim-lib'
Plug 'LucHermitte/local_vimrc'

call plug#end()

" faster:
set ttyfast
set lazyredraw
" set cul!

let g:nerdtree_tabs_open_on_console_startup=1

" set tabsize 
set tabstop=4

" nerd tree update
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>

" auto save settings
" let g:auto_save = 1
" let g:auto_save_events = ["InsertLeave", "TextChanged", "TextChangedI"]

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" max line size
set colorcolumn=83

" mouse scroll add
set mouse=a

" Safe file by ctrl+S
" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif

noremap <silent> <C-S>  :Update<CR>
inoremap <silent> <C-S> <C-C>:Update<CR>
vnoremap <silent> <C-S> <C-O>:Update<CR>

" fix the indent
set autoindent shiftwidth=4 cindent smarttab

" enable Normal mode keys in ru layout
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" add line number
set number relativenumber

" add line breaks (or use :nowrap)
set wrap showbreak=…

" added whitelist dirs to local vim config plugin
call lh#local_vimrc#munge('whitelist', $HOME.'/dev')
call lh#local_vimrc#munge('whitelist', $HOME.'/programming')

" disable bells sound
set belloff=all
