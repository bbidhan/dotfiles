let g:python3_host_prog='/usr/bin/python3'

filetype indent on
syntax on

set autoindent
set clipboard=unnamedplus " Use system clipboard as a default
set colorcolumn=80
set diffopt+=vertical     " Use vertical splits
set expandtab
set foldenable        " Enable folding
set foldlevelstart=10 " Open most folds by default
set foldmethod=indent " Fold based on indent level
set hidden
set history=1000
set hlsearch
set ignorecase            " Case insensitive search
set noswapfile            " Disable swap file
set number
set relativenumber number
set shiftwidth=4
set showmatch
set smartcase
set smartindent
set tabstop=4
set undofile              " Persistent undo
set undolevels=1000       " How many undos
set undoreload=10000      " Number of lines to save for undo
set wrap linebreak nolist

autocmd BufWritePre * :%s/\s\+$//e

let mapleader = " "
noremap <leader>w :w<cr>
noremap <leader>rv :source ~/.config/nvim/init.vim<cr>
noremap H ^
noremap L g_
imap jj <Esc>

nnoremap <leader>ev :edit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

call plug#begin('~/.config/nvim/plugged')

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

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'justinmk/vim-dirvish'
Plug 'junegunn/vim-peekaboo'

Plug 'terryma/vim-multiple-cursors'
Plug 'kien/ctrlp.vim'
Plug 'w0rp/ale'
Plug 'wellle/targets.vim'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'tpope/vim-obsession'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" {{{
    let g:deoplete#enable_at_startup = 1
" }}}

call plug#end()

" Colorscheme
set t_Co=256
set background=dark
colorscheme gruvbox

" Have Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

nmap <F3> :UndotreeToggle<CR>

command! FormatJSON %!python -m json.tool
