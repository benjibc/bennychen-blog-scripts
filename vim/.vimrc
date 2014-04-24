set hlsearch
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set nobackup
set re=1
execute pathogen#infect()
colorscheme distinguished 
let g:syntastic_jslint_checkers=['jslint']
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
syntax on
filetype plugin indent on
au FileType javascript call JavaScriptFold()
