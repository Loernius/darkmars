" ----------------------------------------------------------------- "
" name			darkmars											"
" description	My personal vim theme                               "
" author		fabianogosiltel@gmail.com							"
" version		0.1 (2021-02-13)									"
" license		GPLv3+												"
" ----------------------------------------------------------------- "

let colors_name = "darkmars"
set background=dark

if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif
if version > 800
	set termguicolors
endif

function! s:hi(group, fg, bg, gui)
	let l:res = "hi " . a:group
	if a:fg != ""
		let l:res = l:res . " guifg=" . a:fg
	endif
	if a:bg != ""
		let l:res = l:res . " guibg=" . a:bg
	endif
	if a:gui != ""
		let l:res = l:res . " gui=" . a:gui
		let l:res = l:res . " cterm=". a:gui
	endif
	execute l:res
endfunction

let s:col00 = "#241721"		" black 1
let s:col01 = "#cc1e2c"		" red 1
let s:col02 = "#c1330e"		" green 1
let s:col03 = "#ff5435"		" brown 1
let s:col04 = "#741630"		" blue 1
let s:col05 = "#40152a"		" purple 1
let s:col06 = "#5e8d87"		" teal 1
let s:col07 = "#806035"		" grey 1
let s:col08 = "#382434"		" black 2
let s:col09 = "#c84953"		" red 2
let s:col10 = "#c17351"		" green 2
let s:col11 = "#ff7a62"		" brown 2
let s:col12 = "#973d56"		" blue 2
let s:col13 = "#6d2447"		" purple 2
let s:col14 = "#8abeb7"		" teal 2
let s:col15 = "#e2ccaf"		" grey 2


" --------------------------------------------------------------------------------------------- }}} -
" - originals --------------------------------------------------------------------------------- {{{ -

call s:hi ("Comment",		s:col07,	s:col08,	"none")
call s:hi ("Constant",		s:col06,	s:col08,	"none")
call s:hi ("Cursor",		s:col00,	s:col15,	"bold")
call s:hi ("CursorLine",	"",			s:col00,	"none")
call s:hi ("DiffAdd",		s:col02,	s:col08,	"none")
call s:hi ("DiffChange",	s:col04,	s:col08,	"none")
call s:hi ("DiffDelete",	s:col01,	s:col08,	"none")
call s:hi ("Error",			s:col15,	s:col01,	"none")
call s:hi ("Identifier",	s:col04,	s:col08,	"none")
call s:hi ("Ignore",		s:col00,	s:col08,	"none")
call s:hi ("ModeMsg",		s:col11,	s:col08,	"bold")
call s:hi ("Normal",		s:col15,	s:col08,	"none")
call s:hi ("Operator",		s:col03,	s:col08,	"none")
call s:hi ("Pmenu",			s:col15,	s:col08,	"none")
call s:hi ("PreProc",		s:col12,	s:col08,	"none")
call s:hi ("Search",		s:col09,	s:col08,	"none")
call s:hi ("Special",		s:col14,	s:col08,	"none")
call s:hi ("SpellRare",		s:col11,	s:col08,	"none")
call s:hi ("Statement",		s:col02,	s:col08,	"none")
call s:hi ("StatusLine",	s:col08,	s:col03,	"bold")
call s:hi ("StatusLineNC",	s:col08,	s:col15,	"none")
call s:hi ("Title",			s:col13,	s:col08,	"bold")
call s:hi ("Todo",			s:col09,	s:col08,	"none")
call s:hi ("Type",			s:col05,	s:col08,	"none")
call s:hi ("Underlined",	s:col15,	s:col08,	"underline")
call s:hi ("Visual",		s:col08,	s:col07,	"none")
call s:hi ("WarningMsg",	s:col09,	s:col08,	"none")

" --------------------------------------------------------------------------------------------- }}} -
" - linked ------------------------------------------------------------------------------------ {{{ -

hi! link Boolean		Constant
hi! link Character		Constant
hi! link ColorColumn	CursorColumn
hi! link Conceal		Comment
hi! link Conditional	Statement
hi! link CursorColumn	CursorLine
hi! link CursorIM		Cursor
hi! link CursorLineNr	Normal
hi! link Debug			Special
hi! link Define			PreProc
hi! link Delimiter		Special
hi! link DiffText		Normal
hi! link Directory		Type
hi! link EndOfBuffer	Ignore
hi! link ErrorMsg		Error
hi! link Exception		Statement
hi! link Float			Constant
hi! link FoldColumn		Comment
hi! link Folded			Comment
hi! link Function		Identifier
hi! link IncSearch		Search
hi! link Include		PreProc
hi! link Keyword		Operator
hi! link Label			Statement
hi! link LineNr			Ignore
hi! link Macro			PreProc
hi! link MatchParen		Search
hi! link MoreMsg		Special
hi! link NonText		Ignore
hi! link Number			Constant
hi! link PmenuSbar		StatusLineNC
hi! link PmenuSel		Visual
hi! link PmenuThumb		StatusLine
hi! link PreCondit		PreProc
hi! link Question		ModeMsg
hi! link Repeat			Statement
hi! link SignColumn		FoldColumn
hi! link SpecialChar	Special
hi! link SpecialComment	Special
hi! link SpecialKey		Special
hi! link SpellBad		Error
hi! link SpellCap		Error
hi! link SpellLocal		Operator
hi! link StorageClass	Type
hi! link String			Constant
hi! link Structure		Type
hi! link TabLine		StatusLineNC
hi! link TabLineFill	StatusLineNC
hi! link TabLineSel		StatusLine
hi! link Tag			Special
hi! link Typedef		Type
hi! link VertSplit		StatusLineNC
hi! link VisualNOS		Visual
hi! link WildMenu		StatusLineNC

" --------------------------------------------------------------------------------------------- }}} -
" - languages --------------------------------------------------------------------------------- {{{ -

" help
hi! link helpSectionDelim	Type

" --------------------------------------------------------------------------------------------- }}} -
