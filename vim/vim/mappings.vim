" Author: Scyn - Remi Chaintron <remi.chaintron@gmail.com>
"
"
" {{{ BUFFERS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffer changing / cycling files through buffer
map <S-LEFT> <ESC>:bp<RETURN>
map <S-RIGHT> <ESC>:bn<RETURN>
map <SPACE>k <C-w><up>
map <SPACE>j <C-w><down>
map <SPACE>l <C-w><right>
map <SPACE>h <C-w><left>

" Tab moving
map :ee :tabe
map <SPACE>- :tabp<RETURN>
map <SPACE>= :tabn<RETURN>

" Resize buffers
map <C-right> <C-W><
map <C-left> <C-W>>

" BufExplorer
nmap <silent> <unique> <SPACE><SPACE> :BufExplorer<CR>

" Vertical gf
nmap vgf :vsplit <cfile><CR>
" Horizontal gf
nmap hgf :split <cfile><CR>
" Tab gf
nmap tgf :tabedit <cfile><CR>
"}}}

" {{{ INDENT
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" reindent file
map <F12> ggvG=``
" set indentation behavior
map <F11> :call My_indent_style ()<CR>
" Toogle visual tabs
map <F10> :call SeeTab ()<CR>
"}}}

" {{{ PLUGINS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FuzzyFinder
nmap <silent> <unique> <SPACE>o :FufBuffer<CR>
nmap <silent> <unique> <SPACE>f :FufFile<CR>
nmap <silent> <unique> <SPACE>d :FufDir<CR>
nmap <silent> <unique> <SPACE>m :FufBookmarkFile<CR>
nmap <silent> <unique> <SPACE>a :FufBookmarkAddFile<CR>
nmap <silent> <unique> <SPACE><TAB> :FufCoverageFile<CR>
nmap <silent> <unique> <SPACE>e :FufMruFile<CR>
nmap <silent> <unique> <SPACE>c :FufMruCmd<CR>

" CtrlP
nmap ; :CtrlPBuffer<CR>
"}}}

" {{{ EDITING
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change textwidth values (200 or 80)
map <F9> :call ToogleTextWidth ()<CR>
"}}}

" {{{ MISC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Esc shortcut
imap jj <Esc>
" Unfold all file
map ZO ggvGzO
" disable highlighting : Useful after performing a search
map -- <ESC>:noh<RETURN>
" Doxygen plugin fixes
map dox <ESC>:Dox<RETURN><ESC>-tw
" Folding functions
map -f <ESC>/^}<RETURN><ESC>zf%
" Open cwd
cmap ewd e .
cmap sudow w !sudo tee %

" Cd to the path of the working file
map ,cd :cd %:p:h<CR>
"}}}

