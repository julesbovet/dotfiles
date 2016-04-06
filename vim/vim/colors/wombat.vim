" Maintainer:	Lars H. Nielsen (dengmao@gmail.com)
" Last Change:	January 22 2007

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "wombat"


" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine	  guibg=#2d2d2d
  hi CursorColumn guibg=#2d2d2d
  hi MatchParen      guifg=#000000 guibg=#FD971F gui=bold
endif

" complete menu
hi FoldColumn      guifg=#465457 guibg=#232323
hi Folded          guifg=#465457 guibg=#232323
hi IncSearch       guifg=#C4BE89 guibg=#000000
hi Function        guifg=#A6E22E
hi Identifier      guifg=#FD971F
hi Directory       guifg=#A6E22E               gui=bold
hi Ignore          guifg=#808080 guibg=bg

" General colors
hi Cursor 		guifg=NONE    guibg=#656565 gui=none
hi Normal 		guifg=#f6f3e8 guibg=#212121 gui=none
hi NonText 		guifg=#808080 guibg=#212121 gui=none
hi LineNr 		guifg=#857b6f guibg=#262626 gui=none
hi StatusLine		guifg=#f6f3e8 guibg=#444444 gui=italic
hi StatusLineNC		guifg=#857b6f guibg=#444444 gui=none
hi VertSplit		guifg=#444444 guibg=#444444 gui=none
hi Title		guifg=#f6f3e8		    gui=bold
hi Visual		guifg=#f6f3e8 guibg=#444444 gui=none
hi SpecialKey		guifg=#808080 guibg=#343434 gui=none

" Syntax highlighting
hi Comment 		guifg=#76909e gui=italic
hi Todo 		guifg=#ef8974 gui=italic
hi Constant		guifg=#ef8974 gui=none
hi String 		guifg=#95e454 gui=italic
hi Identifier		guifg=#cae682 gui=none
hi Function		guifg=#cae682 gui=none
hi Type 		guifg=#7dd355 gui=none
hi Statement		guifg=#8ac6f2 gui=none
hi Keyword		guifg=#8ac6f2 gui=none
hi PreProc 		guifg=#e5786d gui=none
hi Number		guifg=#ef8974 gui=none
hi Special		guifg=#e7f6da gui=none

hi DiffAdd                       guibg=#13354A
hi DiffChange      guifg=#89807D guibg=#4C4745
hi DiffDelete      guifg=#960050 guibg=#1E0010
hi DiffText                      guibg=#4C4745 gui=italic,bold

hi ModeMsg         guifg=#E6DB74
hi MoreMsg         guifg=#E6DB74
hi Operator        guifg=#F92672

hi StorageClass    guifg=#FD971F               gui=italic
hi Structure       guifg=#66D9EF
hi Tag             guifg=#F92672               gui=italic
hi Title           guifg=#ef5939

hi Pmenu           guifg=#95E789 guibg=#121212
hi PmenuSel                      guibg=#808080
hi PmenuSbar                     guibg=#080808
hi PmenuThumb      guifg=#66D9EF
