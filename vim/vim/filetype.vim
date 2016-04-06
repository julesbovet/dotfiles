augroup filetypedetect
    au BufNewFile,BufRead *.c                     	setf c
    au BufNewFile,BufRead *.go 			        set filetype=go
    au BufNewFile,BufRead *.hcc 			set filetype=cpp
    au BufNewFile,BufRead *.cc				set filetype=cpp
    au BufNewFile,BufRead *.hxx				set filetype=cpp
    au BufNewFile,BufRead *.hh				set filetype=cpp
    au BufRead,BufNewFile *.ll,*.yy			set filetype=cpp
    au BufRead,BufNewFile *.aasm 			set filetype=asm
    au BufRead,BufNewFile *.s,*.S,*.cor 		set filetype=asmx86
    au BufRead,BufNewFile *.tig				set filetype=tiger
    au BufRead,BufNewFile *.tih				set filetype=tiger
    au BufRead,BufNewFile *.txt 			set filetype=txt
augroup END

augroup Binary
    au!
    au BufReadPre  *.o,out,*.obj,*.a,*.so,*.exe,*.bin let &bin=1
    au BufReadPost *.o,*.out,*.obj,*.a,*.so,*.exe,*.bin if &bin | %!xxd
    au BufReadPost *.o,*.out,*.obj,*.a,*.so,*.exe,*.bin set ft=xxd | endif
    au BufWritePre *.o,*.out,*.obj,*.a,*.so,*.exe,*.bin if &bin | %!xxd -r
    au BufWritePre *.o,*.out,*.obj,*.a,*.so,*.exe,*.bin endif
    au BufWritePost *.o,*.out,*.obj,*.a,*.so,*.exe,*.bin if &bin | %!xxd
    au BufWritePost *.o,*.out,*.obj,*.a,*.so,*.exe,*.bin set nomod | endif
augroup END
au BufNewFile,BufRead *todo,*TODO		set ft=wtodo
autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
autocmd BufRead *.tex set makeprg=texi2pdf\ '%'

