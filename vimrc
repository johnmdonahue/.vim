filetype off
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

set nocompatible

set modelines=0

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set encoding=utf-8
set scrolloff=10
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
"set cursorline 
"hi CursorLine ctermbg= 
hi LineNr ctermfg=black ctermbg=none
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
"set relativenumber


"Don't clutter my dirs up with swp and tmp files
set viminfo+=n~/.vim/.info
if isdirectory($HOME . '/.vim/backup') == 0
  :silent !mkdir -p ~/.vim/backup >/dev/null 2>&1
endif
set backupdir=~/.vim/backup//
if isdirectory($HOME . '/.vim/swp') == 0
  :silent !mkdir -p ~/.vim/swp >/dev/null 2>&1
endif
set directory=~/.vim/swp//
if isdirectory($HOME . '/.vim/undo') == 0
  :silent !mkdir -p ~/.vim/undo >/dev/null 2>&1
endif
set undofile
set undodir=~/.vim/undo//

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
"set colorcolumn=85

"set list
"set listchars=tab:▸\ ,eol:¬

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
"nnoremap ; :

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>a :Ack
nnoremap <leader>q gqip

" Use control-c/x for copy paste to clipboard
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>
nnoremap <C-v> :r !pbpaste<CR><CR>

nnoremap <leader><tab> :NERDTreeToggle<CR>
nnoremap <left> gT
nnoremap <right> gt
imap jj <Esc>
"autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd BufWinEnter * NERDTreeMirror
"let NERDTreeMapOpenInTab='<CR>'

if &t_Co > 2 || has("gui_running")
  syntax on
  "colorscheme hemisu
  "set background=dark
endif
