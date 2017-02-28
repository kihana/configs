source D:/Portable/vim/scripts/restore_size_and_position.vim

" Set vim-plug
call plug#begin('~/vimfiles/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

Plug 'daylerees/colour-schemes', { 'rtp': 'vim/' }

Plug 'crater2150/vim-theme-chroma'

Plug 'Valloric/YouCompleteMe'

" Initialize plugin system
call plug#end()

" Disable compatible
set nocompatible

" Show line number
set nu

" Show cursor position in statusl line
set ruler

" Enable syntax highliting
syntax on

" Set colorscheme
colorscheme chroma

" Set font
set guifont=Hack:h9

" Disable creating backup files
set nobackup

" Disable creating swap file
set noswapfile

" Set tabs
set tabstop=2 shiftwidth=2 expandtab smarttab

" Set backspace key
set backspace=indent,eol,start

" Set go to next or previous line when pressed right or left arrows
set whichwrap+=<,>,[,]

" Save undo file
set undofile
set undodir=%USERPROFILE%/vimfiles/undo//

" Hide toolbar
set guioptions-=T

" 
set autoread

" Set highlighting all search matches
set hlsearch

" To enable the saving and restoring of screen positions.
let g:screen_size_restore_pos = 1

" To save and restore screen for each Vim instance.
" This is useful if you routinely run more than one Vim instance.
" For all Vim to use the same settings, change this to 0.
let g:screen_size_by_vim_instance = 1

let g:tagbar_ctags_bin='C:\ctags58\ctags.exe'

" Map hotkeys

" Undo/Redo
nmap <C-z> :undo<CR>
imap <C-z> :undo<CR>
nmap <C-y> :redo<CR>
imap <C-y> :redo<CR>

"--------------------- Plugins ------------------------

" NERD Tree
map <silent> <C-n>t :NERDTreeToggle<CR>

" YouCompleteMe
nnoremap <silent> <C-b> :YcmCompleter GoTo<CR>
