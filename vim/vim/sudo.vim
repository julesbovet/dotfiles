function! s:SudoWrite()
	silent! execute "normal :w ! sudo tee %"
endfunction


" Commansd:{{{
"------------------------------------------------------------------------------
command! -nargs=0	SudoWrite	call s:SudoWrite()
"}}}
