hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "ycm_minimal_colors"

set background=light

hi Normal                      guifg=#222222 guibg=none
hi CursorLine                  guibg=#eeeeee
hi CursorLineNR                gui=none
hi Visual                      guibg=#cbe8f2

hi Folded                      guibg=#fce5f9


hi link IncSearch CurSearch
hi Search    ctermfg=15 ctermbg=3 guifg=#222222 guibg=NvimLightYellow
hi CurSearch ctermfg=15 ctermbg=3 guifg=#222222 guibg=#ace2cb

hi String                      guifg=#870087
hi link Character              String
hi link @string.escape         String
hi link @string.special        String
hi link @string.regexp         String
hi link @character.special     String
hi link @punctuation.special   String
hi link @punctuation.delimiter String

hi Keyword                     guifg=#d70000
hi link Boolean                Keyword
hi link @type.builtin          Keyword
hi link @constant.builtin      Keyword
hi link @variable.builtin      Keyword  
hi link @type                  Keyword 
hi link @function.builtin      Keyword  
hi link @tag                   Keyword

" hi link @keyword.directive Comment -> apparent collision between shebangs and #ifndef, etc

hi @variable.member  gui=none
hi File guifg=#222222

hi Identifier guifg=none

hi Function guifg=none

hi Directory guifg=#222222

hi Number guifg=#005fff

hi @label guifg=none
hi @constructor guifg=#222222

hi @tag.attribute guifg=none

hi! link PmenuSel Visual

hi NvimTreeExecFile    guifg=#222222
hi NvimTreeImageFile   guifg=none
hi NvimTreeRootFolder  guifg=none
hi NvimTreeSpecialFile guifg=none

hi NotifyINFOBorder     guifg=#79740e 
hi link NotifyINFOIcon  NotifyINFOBorder
hi link NotifyINFOTitle NotifyINFOBorder

" ✗  unstaged
hi! NvimTreeGitDirtyIcon guifg=#914F1E

" ✓  staged
hi! NvimTreeGitStagedIcon guifg=#347928

"   unmerged

" ➜  renamed

" ★  untracked
hi! link NvimTreeGitNewIcon NvimTreeGitStagedIcon

"   deleted
hi! NvimTreeGitDeletedIcon guifg=#d70000

" ◌  ignored
" hi! NvimTreeGitIgnoredIcon guifg=#d70000

" butano
autocmd FileType cpp,cpphdr syn match ButanoAssert /\<BN_ASSERT\>/
autocmd FileType cpp,cpphdr syn match ButanoError /\<BN_ERROR\>/
autocmd FileType cpp,cpphdr syn match ButanoLog /\<BN_LOG\>/
autocmd FileType cpp,cpphdr hi ButanoAssert guibg=#f9c509 gui=bold,italic
autocmd FileType cpp,cpphdr hi ButanoError guibg=#f74f4a gui=bold,italic
autocmd FileType cpp,cpphdr hi ButanoLog guibg=#8ef2c3 gui=bold,italic

" todo comments
hi! TodoBgTEST     gui=bold,italic guifg=#ffffff guibg=#7d2e68
hi! TodoBgPERF     gui=bold,italic guifg=#ffffff guibg=#7c3aed
hi! TodoBgNOTE     gui=bold,italic guifg=#ffffff guibg=#5e5e5e
hi! TodoBgDONE     gui=bold,italic guifg=#ffffff guibg=#467d1c
hi! TodoBgWARN     gui=bold,italic guifg=#ffffff guibg=#b34d00
hi! TodoBgHACK     gui=bold,italic guifg=#ffffff guibg=#b34d00
hi! TodoBgTODO     gui=bold,italic guifg=#ffffff guibg=#2563eb
hi! TodoBgDEBUG    gui=bold,italic guifg=#ffffff guibg=#c800ff
hi! TodoBgFIX      gui=bold,italic guifg=#ffffff guibg=#590008
hi! TodoBgASSERT   gui=bold,italic guifg=#ffffff guibg=#766617

