" General indentation settings
set expandtab
set tabstop=2
set shiftwidth=2
set smarttab

" Set font
if has('gui_running')
  set guifont=Hack:h9:cRUSSIAN:qDRAFT
endif

" Enable syntax highlighting
syntax enable

" Add moving cursor through the lines by arrow keys
set whichwrap+=<,>,[,]

" Enable removing characters through the lines by <BS> and <Del> keys
set backspace=indent,eol,start
