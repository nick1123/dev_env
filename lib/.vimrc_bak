set t_Co=256
syntax on
set tw=0
set nowrap
filetype plugin indent on
colorscheme nuvola
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

autocmd FileType ruby,eruby         call UseRubyIndent()

function UseRubyIndent ()
    setlocal tabstop=8
    setlocal softtabstop=2
    setlocal shiftwidth=2
    setlocal expandtab
    setlocal makeprg=ruby\ %
endfunction

vnoremap \ll :'<,'>s/ /^M/g<cr>
nnoremap \ll :s/ /^M/g<cr>

if has("autocmd")
  " Enable filetype detection
  filetype plugin indent on
 
  " Restore cursor position
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
endif
if &t_Co > 2 || has("gui_running")
  " Enable syntax highlighting
  syntax on
endif

" Settings for VimClojure
let g:clj_highlight_builtins=1      " Highlight Clojure's builtins
let g:clj_paren_rainbow=1           " Rainbow parentheses'!
