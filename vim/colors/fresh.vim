:set background=dark

:highlight clear

if version > 580
 hi clear
 if exists("syntax_on")
 syntax reset
 endif
endif

let colors_name = "fresh"

:hi VertSplit gui=none cterm=reverse
:hi Folded ctermfg=8 ctermbg=darkgrey
:hi FoldColumn ctermfg=4 ctermbg=7
:hi IncSearch cterm=none ctermfg=3 ctermbg=2
:hi ModeMsg cterm=none ctermfg=brown
:hi MoreMsg ctermfg=2
:hi NonText cterm=bold ctermfg=blue
:hi Question ctermfg=2
:hi Search cterm=none ctermfg=8 ctermbg=blue
:hi SpecialKey ctermfg=2
:hi StatusLine gui=none cterm=bold,reverse
:hi StatusLineNC gui=none cterm=reverse
:hi Title cterm=bold ctermfg=3
:hi Statement ctermfg=1
:hi Visual cterm=reverse
:hi WarningMsg ctermfg=1
:hi String ctermfg=3
:hi Comment ctermfg=8
:hi Constant ctermfg=2
:hi Special ctermfg=1
:hi markdownLinkDelimiter ctermfg=1
:hi markdownLinkTextDelimiter ctermfg=1
:hi mkdHeading ctermfg=1
:hi Identifier ctermfg=1
:hi Include ctermfg=1
:hi PreProc ctermfg=1
:hi Operator ctermfg=1
:hi Define ctermfg=3
:hi Type ctermfg=2
:hi Function ctermfg=3
:hi Structure ctermfg=2
:hi LineNr ctermfg=8
:hi Ignore cterm=bold ctermfg=7
:hi Directory ctermfg=darkcyan
:hi ErrorMsg cterm=bold cterm=bold ctermfg=7 ctermbg=1
:hi VisualNOS cterm=bold,underline
:hi WildMenu ctermfg=0 ctermbg=3
:hi DiffAdd ctermbg=4
:hi DiffChange ctermbg=5
:hi DiffDelete cterm=bold ctermfg=4 ctermbg=6
:hi DiffText cterm=bold ctermbg=1
:hi Underlined cterm=none ctermfg=magenta
:hi Error cterm=bold ctermfg=7 ctermbg=1
:hi SpellErrors cterm=bold ctermfg=1 ctermbg=1
:hi SignColumn ctermbg=0
:hi Conditional ctermfg=1
:hi Repeat ctermfg=1
:hi Label ctermfg=1
:hi Exception ctermfg=1
:hi Keyword ctermfg=1
:hi PreProc ctermfg=6
:hi Macro ctermfg=3
:hi PreCondit ctermfg=6
:hi Character ctermfg=2
:hi Boolean ctermfg=5
:hi Number ctermfg=5
:hi Float ctermfg=5
:hi StorageClass ctermfg=5
:hi Typedef ctermfg=3
:hi Pmenu ctermbg=8 ctermfg=7
:hi PmenuSel ctermbg=8 ctermfg=3

" Coc

:hi CocErrorSign ctermbg=1 ctermfg=0
:hi CocWarningSign ctermbg=3 ctermfg=0
:hi CocInfoSign ctermbg=2 ctermfg=0
:hi CocHintSign ctermbg=6 ctermfg=0


" Python

:hi pythonBuiltin ctermfg=3
:hi pythonBuiltinObj ctermfg=3
:hi pythonBuiltinFunc ctermfg=3
:hi pythonFunction ctermfg=3
:hi pythonDecorator ctermfg=1
:hi pythonInclude ctermfg=1
:hi pythonImport ctermfg=1
:hi pythonRun ctermfg=4
:hi pythonCoding ctermfg=4
:hi pythonOperator ctermfg=1
:hi pythonException ctermfg=1
:hi pythonExceptions ctermfg=5
:hi pythonBoolean ctermfg=5
:hi pythonDot ctermfg=3
:hi pythonConditional ctermfg=1
:hi pythonRepeat ctermfg=1
:hi pythonDottedName ctermfg=2 cterm=bold
