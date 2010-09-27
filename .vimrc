runtime! autoload/pathogen.vim
if exists('g:loaded_pathogen')
  call pathogen#runtime_prepend_subdirectories(expand('~/.vimbundles'))
endif


syntax on
filetype plugin indent on
colorscheme vividchalk
" this is vim, don't worry about compatability with vi
set nocompatible
set modelines=0

" tabs expand to 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
" show line numbers relative to current line
set relativenumber
set undofile

" the following 2 remap lines makes vim's regex act like perl's
nnoremap / /\v
vnoremap / /\v
" the following 2 lines cause mix case search to be case sensative
set ignorecase
set smartcase
" highlight inc search results
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

" deal with long lines
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" disable courser keys so I'm forced to use hjkl
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

" map F1 to esc for the times I mistype
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
" map ; to : so I don't have to hit the shift key to enter a command
nnoremap ; :

" auto save when vim loses focus (ya, its that useful)
au FocusLost * :wa

" strip all trailing whitespace from the file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>a :Ack
" folding tag, useful when working with html
nnoremap <leader>ft Vatzf
" verticle split window and move cursor to new buffer
nnoremap <leader>w <C-w>v<C-w>l

" easier navigation between window splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


augroup vimrc
  autocmd!
  autocmd GuiEnter * set guifont=Menlo:h12 guioptions-=T columns=120 lines=70 number
augroup END

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
