let mapleader = ","
" Add runtime path for vim if neovim is launched.
" if has('nvim')
"	set rtp^=~/.vim
" endif

" Filetype plugin
filetype plugin on

" Indention
filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab

" Set the gutter width
set numberwidth=3

" Set line numbers on
set number

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
Plug 'sheerun/vim-polyglot'
Plug 'chrisbra/Colorizer'

" Golang
Plug 'fatih/vim-go'

" Golang - Deoplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Golang - Deoplete-go
Plug 'zchee/deoplete-go', { 'do': 'make'}

" Golang - gocode daemon to be used with Deoplete
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }

call plug#end()

syntax on			 		" Syntax highlighting

" Golang Code Highlighting
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

" Colorscheme 
colorscheme wal

" Airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
"let g:airline_theme='base16_spacemacs' " Currently broken

" Nerdtree
autocmd VimEnter * NERDTree 			" Always open Nerdtree when opening vim.
autocmd VimEnter * wincmd p			" Change focus from Nerdtree to the file.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " Close NERDTree if it is the last window open
