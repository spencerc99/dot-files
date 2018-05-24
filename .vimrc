set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"" Vim airline theme
let g:airline_theme='dark'
""let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Turn off vi compatibility, for vim-only features
set nocompatible

" Syntax help
syntax on
set autoindent
set textwidth=80 " set width of line to 80 characters
set expandtab " use space char instead of tab char
set tabstop=4 " use meraki standard of two spaces
set shiftwidth=2 " use meraki standard of two spaces
set smartindent " try to put the indent level in the right place

" Search customization
set ignorecase " case insensitive search
set smartcase " unless there is mixed case, then make it case insensitive
set hlsearch " highlight the search terms instead of just moving the cursor
set incsearch " highlight search terms as you type them

" Use system clipboard as default copy register
set clipboard=unnamed

" Enable mouse for temporary convenience
set mouse=a

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
