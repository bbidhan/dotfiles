filetype on
syntax on
set colorcolumn=80
set number

set hidden
set history=1000

filetype indent on
set wrap linebreak nolist
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set showmatch
set relativenumber number

set foldenable        " Enable folding
set foldlevelstart=10 " Open most folds by default
set foldmethod=indent " Fold based on indent level

autocmd BufWritePre * :%s/\s\+$//e
set hlsearch

let mapleader = " "
noremap <leader>w :w<cr>
noremap <leader>q :q<cr>
noremap <leader>rv :source ~/.config/nvim/init.vim<cr>
noremap H ^
noremap L g_
noremap J 5j
noremap K 5k
imap jj <Esc>

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'wikitopian/hardmode'
" {{{
    nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>
" }}}

Plug 'Yggdroot/indentLine'
" {{{
    let g:indentLine_char = '|'
    let g:indentLine_leadingSpaceEnabled = 1
" }}}
Plug 'raimondi/delimitmate'
Plug 'itchyny/lightline.vim'

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" {{{
    let g:deoplete#enable_at_startup = 1
" }}}
Plug 'terryma/vim-multiple-cursors'

call plug#end()

" Colorscheme
set t_Co=256
set background=dark
colorscheme gruvbox

