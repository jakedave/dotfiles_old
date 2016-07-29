" Name: keybindings
" Author: Jake David
" Created: 2016 Jul 25
" Modified: 2016 Jul 25
"
" ========== WINDOW NAVIGATION =========== "{{{
" Skip control+w to switch windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Faster move window to new tab
nnoremap <leader>w <C-W>T

" Fast [vertical] split
nnoremap <leader>vsp :vsp<cr>
nnoremap <leader>sp :sp<cr>

" Faster window resizing
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <leader>= <C-S-w>=
"}}}
" ============ TAB MANAGEMENT ============ "{{{
" Self-Explanatory
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tl :tablast<cr>
nnoremap <leader>tt :tabfirst<cr>
nnoremap <leader>tm :tabmove
"}}}
" =============== FOLDING ================ "{{{
" Toggle folds
inoremap <F9> <C-O>za
nnoremap <F9> za

" Open all folds
inoremap <F10> <C-O>zR
nnoremap <F10> zR

" Close all folds
inoremap <F11> <C-O>zM
nnoremap <F11> zM
"}}}
" ========= SEARCHING & SPELLING ========= "{{{
" Auto-correct to best word
nnoremap <Leader>z 1z=

" Turn off search highlight
nnoremap <esc> :noh<return><esc>
"}}}
" =============== EDITING ================ "{{{
" Faster single line tab
nnoremap <leader>k v>
nnoremap <leader>j v<

" Fast fix all indents, go back to cursor
nnoremap <leader>i gg=G''

" Faster select all
nnoremap <leader>a ggVG

" Fast yank to end of line, no carriage return
nnoremap <leader>y y$

" Fast delete to end of line
nnoremap <leader>d d$
"}}}
" ================ MISC ================== "{{{
" ev to edit vimrc
:nnoremap <leader>ev :e $MYVIMRC<cr>

" sv to source vimrc
:nnoremap <leader>sv :source $MYVIMRC<cr>

" Fast esc [and save] from insert
inoremap jk <esc>
inoremap jj <esc>:w!<cr> 
" vim:foldmethod=marker:foldlevel=0
"}}}
