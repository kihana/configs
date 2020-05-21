" General indentation settings
set expandtab
set tabstop=2
set shiftwidth=2
set smarttab

" Setting for vim version with GUI
if has('gui_running')
  " Set font
  set guifont=Hack:h9:cRUSSIAN:qDRAFT
  " Remove toolbar
  set guioptions-=T
endif

" Enable syntax highlighting
syntax enable

" Add moving cursor through the lines by arrow keys
set whichwrap+=<,>,[,]

" Enable removing characters through the lines by <BS> and <Del> keys
set backspace=indent,eol,start

" Enable showing line number
set nu
