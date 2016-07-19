" Name: vimrc
" Author: Jake David
" License: OSI approved MIT license
" Created: 2016 May
" Modified: 2016 Jul 19
"
" ================ SYNTAX ================"{{{
" Enable syntax processing
syntax enable

" Show file in title bar
set title
"}}}
" ============= SPACE & TABS ============="{{{
" Tab == 4 spaces
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
"}}}
" =============== FOLDING ================"{{{
" Toggle folds with F9
inoremap <F9> <C-O>za
nnoremap <F9> za
"}}}
" ================== UI =================="{{{
" Show line numbers
 set number

" Show command in bottom bar
set showcmd

" Highlight current line
set cursorline

" Load file type-specific indent files
filetype indent on

" Visual auto complete for command menu
set wildmenu

" Highlight matching [{()}]
set showmatch

" Status line for multi-windows
set statusline=
set statusline +=%2*0x%04B\ %*          "character under cursor
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor
"}}}
" ========= SEARCHING & SPELLING ========="{{{
" Search as characters are entered
set incsearch

" Highlight matches
set hlsearch

" Turn off search highlight
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

" Auto-correct to best word
nnoremap <Leader>z 1z=
"}}}
" =============== MOVEMENT ==============="{{{
" Treat long lines as break lines
map j gj
map k gk
"}}}
" ========== MISC KEY BINDINGS ==========="{{{
" Leader == space
let mapleader=" "

" Map ':' to ';' because speed
nnoremap ; :

" ev to edit vimrc
:nnoremap <leader>ev :e $MYVIMRC<cr>

" sv to source vimrc
:nnoremap <leader>sv :source $MYVIMRC<cr>

" Allow backspacing in insert mode
set bs=indent,eol,start

" Faster single line tab
nnoremap <leader>k v>
nnoremap <leader>j v<

" Faster select all
nnoremap <leader>a ggVG

" Faster esc from insert
inoremap jk <esc>

" Fast yank to end of line, no carriage return
nnoremap <leader>y y$
"}}}
" ========== WINDOW NAVIGATION ==========="{{{
" Skip control+w to switch windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Faster move window to new tab
nnoremap <leader>w <C-W>T

" Faster window resizing
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <leader>= <C-S-w>=
"}}}
" ============ TAB MANAGEMENT ============"{{{
" Self-Explanatory
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tm :tabmove
"}}}
" =========== SESSION OPTIONS ============"{{{
" Open session windows in the way they
"   were left
set sessionoptions+=resize,winpos

" Auto-save/load session
autocmd VIMEnter * :source C:/UAT/vim/session.vim
autocmd VIMLeave * :mksession! C:/UAT/vim/session.vim
"}}}
" ============== FUNCTIONS ==============="{{{
" Source vimrc upon changes to file 
augroup myvimrc" 
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYVIMRC | endif
augroup END

" Get colors
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "solarized"
set background=dark
:colorscheme solarized

" Remember cursor position from last session
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
"}}}
" =============== LICENSE ================"{{{
" ---------------------------------------------------------------------
"
" Copyright (c) 2016 Jake David
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.
"
" vim:foldmethod=marker:foldlevel=0
"}}}
