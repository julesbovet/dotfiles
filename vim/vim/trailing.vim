function! s:DeleteTrailingWhiteSpaces()
	silent! execute "%substitute/\\s\\+$//"
	noh
endfunction

command! -nargs=0	DeleteTrailingWhiteSpaces	:call s:DeleteTrailingWhiteSpaces()

" Delete trailing whitespaces
noremap <silent>	<F6>		:DeleteTrailingWhiteSpaces<CR>
noremap <silent>	-tw		:DeleteTrailingWhiteSpaces<CR>
