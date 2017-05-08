filetype on
syntax on
set colorcolumn=90
set number

set hidden
set history=100

filetype indent on
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set showmatch

autocmd BufWritePre * :%s/\s\+$//e
set hlsearch

let mapleader = " "
noremap <leader>w :w<cr>
noremap <leader>q :q<cr>
noremap <leader>z :source ~/.vimrc<cr>

"==============================================================================
" Colorscheme
"==============================================================================
set t_Co=256
set background=dark
let g:gruvbox_invert_selection=0
"let g:gruvbox_contrast_dark='hard'

colorscheme gruvbox

