" Name: vimrc
" Author: Jake David
" License: OSI approved MIT license (see Github)
" Created: 2016 May
" Modified: 2016 Jul 19
"
" ================ SYNTAX ================ "{{{
" Enable syntax processing
syntax enable

" Show file in title bar
set title

" Get colors
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "solarized"
set background=dark
:colorscheme solarized
"}}}
" ============= SPACE & TABS ============= "{{{
" Tab == 4 spaces
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

" Auto/smart indent
set ai
set si

" Wrap lines
set wrap
"}}}
" =============== FOLDING ================ "{{{
" Close fold after scrolling out of it
" (only if toggle all not used)
set foldclose=all
"}}}
" ================== UI ================== "{{{
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

" Get rid of '@' at end of documents
set display+=lastline

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
" ========= SEARCHING & SPELLING ========= "{{{
" Search as characters are entered
set incsearch

" Highlight matches
set hlsearch

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
"}}}
" =============== MOVEMENT =============== "{{{
" Treat long lines as break lines
map j gj
map k gk
"}}}
" ================ MISC ================== "{{{
" Leader == space
let mapleader=" "

" Map ':' to ';' because speed
nnoremap ; :
"}}}
" ============= KEY BINDINGS ============= "{{{
:source C:/Users/davidj/vimfiles/settings/keybindings.vim
"}}}
" =========== SESSION OPTIONS ============ "{{{
" Open session windows in the way they
"   were left
set sessionoptions+=resize,winpos

" Auto-save/load session
autocmd VIMEnter * :source C:/UAT/vim/session.vim
autocmd VIMLeave * :mksession! C:/UAT/vim/session.vim

" Remember cursor position from last session
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Auto change file on outside change
set autoread
"}}}
" ============== FUNCTIONS =============== "{{{
" Source vimrc upon changes to file 
augroup myvimrc" 
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYVIMRC | endif
augroup END

" Clear registers
function! ClearRegisters()
    let regs='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-="*+'
    let i=0
    while (i<strlen(regs))
        exec 'let @'.regs[i].'=""'
        let i=i+1
    endwhile
endfunction
command! ClearRegisters call ClearRegisters()
" vim:foldmethod=marker:foldlevel=0
"}}}
