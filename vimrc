
let mapleader = ","
" Add runtime path for vim if neovim is launched.
" if has('nvim')
"	set rtp^=~/.vim
" endif

" Indention
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Clipboard
set clipboard+=unnamedplus

" Map
"let mapleader = ","
nnoremap <C-Tab> :bn<CR>
nnoremap <C-S-Tab> :bp<CR>

" Plugins
call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'lervag/vimtex'
Plug 'othree/html5.vim'
Plug 'chriskempson/base16-vim'
Plug 'mklabs/split-term.vim'

" Theme
Plug 'dylanaraps/wal.vim'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Programming
Plug 'Valloric/YouCompleteMe'
Plug 'sheerun/vim-polyglot'

call plug#end()

syntax on			 		" Syntax highlighting
set number
" Colorscheme 
"set termguicolors
colorscheme wal
"hi Normal ctermbg=none
"hi NonText ctermbg=none
"hi LineNr ctermbg=none

" Airline
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'base16_spacemacs'

" Nerdtree
" autocmd VimEnter * NERDTree 			" Always open Nerdtree when opening vim.
" autocmd VimEnter * wincmd p			" Change focus from Nerdtree to the file.
