"---------------------------------------
" Author: Jake David
" Desc: First vimrc... Compiled 
"   from several different sources
"---------------------------------------

"---------------------------------------
" SYNTAX
"---------------------------------------
" enable syntax processing
syntax enable

"show file in title bar
set title

" colors
colorscheme desert
set background=dark


"---------------------------------------
" SPACE & TABS
"---------------------------------------
" Tab == 4 spaces
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4


"---------------------------------------
" UI
"---------------------------------------
" show line numbers
set number

" show command in bottom bar
set showcmd

" highlight current line
set cursorline

" load file type-specific indent files
filetype indent on

" visual auto complete for command menu
set wildmenu

" highlight matching [{()}]
set showmatch


"---------------------------------------
" SEARCHING & SPELLING
"---------------------------------------
" search as characters are entered
set incsearch

" highlight matches
set hlsearch

" turn off search highlight... 
" mapped to <esc>
nnoremap <esc> :noh<return><esc>

" Case insensitive search, except when 
" searching with capital letters
set ignorecase
set smartcase

" REGEX
set magic

" Spell Check
set spell spelllang=en_us

" Spelling auto complete
set complete+=kspell

" Map spell correct because keystrokes
map z z=  


"---------------------------------------
"FOLDING
"---------------------------------------


"---------------------------------------
"MOVEMENT
"---------------------------------------
" Treat long lines as break lines
map j gj
map k gk


"---------------------------------------
"MISC KEY BINDINGS
"---------------------------------------
" leader == space
let mapleader=" "

" map ':' to ';' because speed
nnoremap ; :

" ev to edit vimrc
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" sv to source vimrc
:nnoremap <leader>sv : source $MYVIMRC<cr>

" tab management
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" allow backspacing in insert mode
set bs=indent,eol,start

" faster single line tab
map <leader>k v>
map <leader>j v<

" faster move window to new tab
map <leader>w <C-W>T

" faster select all
map <leader>a ggVG


"---------------------------------------
"STATUS LINE
"---------------------------------------
set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor


"---------------------------------------
"COLORS
"---------------------------------------
hi User1 guifg=#eea040 guibg=#222222
hi User2 guifg=#dd3333 guibg=#222222
hi User3 guifg=#ff66ff guibg=#222222
hi User4 guifg=#a0ee40 guibg=#222222
hi User5 guifg=#eeee40 guibg=#222222
