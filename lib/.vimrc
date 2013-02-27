set t_Co=256
syntax on
set tw=0
set nowrap
filetype plugin indent on
"colorscheme nuvola
set tabstop=4
set shiftwidth=4 
set softtabstop=4 
set expandtab
set ai
set smarttab
set incsearch
set hlsearch
set number
nnoremap <CR> :noh<CR><CR>

set cursorline

" Set leader key
let mapleader=","

function UseRubyIndent ()
    setlocal tabstop=8
    setlocal softtabstop=2
    setlocal shiftwidth=2
    setlocal expandtab
    setlocal makeprg=ruby\ %
endfunction

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Turn backup off, since most stuff is in SVN, git etc anyway...
set nobackup
set nowb
set noswapfile


" 1 tab == 4 spaces
" set shiftwidth=4
" set tabstop=4

"autocmd vimenter * NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Remember info about open buffers on close
set viminfo^=%

" Highlight current col
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn 
"set highlight cursorcolumn 


autocmd BufNewFile,BufRead *.rb,*.rbw,*.gem,*.gemspec,[rR]akefile,*.rake,*.thor,Capfile set filetype=ruby
autocmd FileType ruby set expandtab
autocmd FileType ruby set shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType ruby set dictionary=$HOME/.vim/dict/ruby.dict
autocmd FileType ruby set omnifunc=rubycomplete#Complete
