"---------------------------------------
" Author: Jake David
" Desc: First vimrc... Compiled 
"   from several different sources
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
map <leader>z z=  
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
"---------------------------------------
