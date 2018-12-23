set t_Co=256

set nocompatible "stop pretending to be vi

colorscheme kiriakos_theme
syntax on "enable programming syntax highlighting
set cul

set hlsearch "search highlighting
set incsearch "move to search while typing

set ruler

"set list listchars=nbsp:¬,tab:»·,trail:·,extends:>

set fillchars+=vert:\ 

"searching
set ignorecase
set smartcase

filetype indent on "load specific indentation of programming languages
set wildmenu "autocomplete for command menu

set laststatus=2 

"set statusline=
"set statusline+=%{ChangeStatuslineColor()}
"set statusline+=%0*\ %{toupper(g:currentmode[mode()])}   " Current mode
"set statusline +=%5*\ %n\ %* "buffer number
"set statusline +=%3*%y%*     "file type
"set statusline+=%3*\ %=      "space
"set statusline +=%4*\ %<%F%* "path
"set statusline+=%3*\ %=      "space
"set statusline +=%6*\ %m\ %* "modified sign
"set statusline +=%3*%=%5l%*   "current line
"set statusline +=%3*/%L%*    "total lines


set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%2*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%5*%m%*                "modified flag
set statusline +=%6*%=%5l%*             "current line
set statusline +=%6*/%L%*               "total lines

set colorcolumn=80

set number "enable numbers to the left 
set relativenumber
set nowrap

autocmd BufNewFile,BufReadPost *.ino set filetype=cpp

"Mappings
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

set hidden  "switch to buffers without saving first

let &titleold=getcwd()

aug python
    " ftype/python.vim overwrites this
    au FileType python setlocal ts=4 sts=4 sw=4 noexpandtab
aug end
