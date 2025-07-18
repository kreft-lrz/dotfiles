" theme and colors
set background=dark
set termguicolors
"set t_Co=256
filetype plugin on
syntax enable
colorscheme catppuccin_glc
let g:airline_theme = 'catppuccin_mocha'

set cursorline
set colorcolumn=80
set relativenumber
set nu
set paste

"set omnifunc=syntaxcomplete#Complete
set expandtab
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode 
set hlsearch
set history=100
set ttymouse=xterm2
set fencs=utf-8
set mouse=
"
set tabstop=4
set softtabstop=4
set shiftwidth=4
set scrolloff=8
"finding files
set path+=**
set wildmenu

set titlestring=%t
set title

let g:ale_linters = {'python': 'all'}

" copy to buffer
"vmap <C-c> :w! ~/.vimbuffer<CR>
"nmap <C-c> :.w! ~/.vimbuffer<CR>
" paste from buffer
"map <C-p> :r ~/.vimbuffer<CR>

nnoremap <SPACE> <Nop>
let mapleader=" "
" paste normal mode line to clipboard
nnoremap <leader>y Y:call system("wl-copy -p", @")<cr>
" paste visual mode selection to clipboard
xnoremap <leader>c y:call system("wl-copy", @")<cr>
" paste visual mode selection to primary clipboard (mouse)
xnoremap <leader>y y:call system("wl-copy -p", @")<cr>

imap jk <ESC>


" add DiffSaved to diff current version to last saved
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

" fzf
source /usr/share/doc/fzf/examples/fzf.vim
