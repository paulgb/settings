
syntax on               " syntax highlighting
set tabstop=4           " PEP-8 uses 4 spaces per indentation level
set shiftwidth=4        " shifting (PEP-8)
set expandtab           " spaces instead of tabs (PEP-8, and just bettter in general)
filetype on             " file type detection
filetype indent on      " special indentation rules for file type
filetype plugin on      " auto-completion rules for file type
set hls                 " highlight search terms (:noh to turn off temporarily)
set ignorecase          " ignore case for searches (:set noignorecase to turn off)
set incsearch           " search as you type
colorscheme darkblue    " slightly nicer colour scheme
set scrolloff=10        " keep 10 lines of context on both sides of cursor when scrolling
set laststatus=2        " always display the status line
set shortmess=I         " disable startup screen


" Navigation key bindings for insert mode
map [A <up>
map [B <down>
map [C <right>
map [D <left>

" filename and line numbering in status line
set statusline=%f%m%r%h%w\ 
set statusline+=\ %l\/%L          

" vim markdown defaults to folding things into headers which I don't like
let g:vim_markdown_folding_disabled=1

" allow cursor to go to the beginning of the line
set list lcs=tab:\ \ 

