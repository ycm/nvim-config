hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "ycm_minimal_colors"

set background=light

hi Normal               guifg=#222222 guibg=none
hi CursorLine           guibg=#eeeeee
hi CursorLineNR         gui=none
hi Visual               guibg=#cbe8f2

hi File guifg=#222222

hi String guifg=#870087
hi Character guifg=#870087
hi Keyword guifg=#d70000
hi Boolean guifg=#d70000
hi Identifier guifg=none
hi Function guifg=none
hi Directory guifg=#222222
hi Number guifg=#005fff

hi @string.escape guifg=#870087
hi @label guifg=none
hi @type.builtin guifg=#d70000
hi @constant.builtin guifg=#d70000
hi @constructor guifg=#222222
hi @variable.builtin guifg=#d70000
hi @type            guifg=#d70000

hi NvimTreeExecFile guifg=#222222
hi NvimTreeImageFile guifg=none
hi NvimTreeRootFolder guifg=none
hi NvimTreeSpecialFile guifg=none
