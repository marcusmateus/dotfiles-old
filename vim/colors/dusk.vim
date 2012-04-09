" My very own theme I'm working on based on:
"   - scottymoon/vim-twilight
"   - railscasts 
"   - any other themes / styling I run across and like
"   - my own ideosyncratic tastes

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

set t_Co=256
call EasyColour#ColourScheme#LoadColourScheme('dusk')

" vim: ff=unix
