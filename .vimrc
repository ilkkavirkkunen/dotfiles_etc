set number
set relativenumber
set showmatch
set ignorecase
set smartcase
set incsearch
set mouse=a
set wrap
set linebreak
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

if has("syntax")
	syntax on
endif

set background=dark

filetype plugin indent on

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
