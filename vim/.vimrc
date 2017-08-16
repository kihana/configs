source $HOME/.vim/scripts/restore_size_and_position.vim

" disable vi-compatible
set nocompatible

" vim-plug configuration
call plug#begin('~/.vim/plugged')

 Plug 'tpope/vim-sensible'
 Plug 'mattn/emmet-vim'
 Plug 'bling/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
"" Plug 'jistr/vim-nerdtree-tabs'
 Plug 'raimondi/delimitmate'
 Plug 'sheerun/vim-wombat-scheme'
 " Plug 'istib/vifm.vim'
 Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --system-libclang' }
" Make sure you use single quotes
" Plug 'junegunn/seoul256.vim'
" Plug 'junegunn/vim-easy-align'
"
" " On-demand loading
 Plug 'scrooloose/nerdtree'
 Plug 'xolox/vim-misc'
 Plug 'xolox/vim-session'

" Automatic keyboard layout switching in insert mode 
 Plug 'lyokha/vim-xkbswitch'
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
" " Using git URL
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" " Plugin options
" Plug 'nsf/gocode', { 'tag': 'go.weekly.2012-03-13', 'rtp': 'vim' }
"
" " Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
"
" " Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'
"
call plug#end()

" set utf8 encoding
set encoding=utf-8

" show line number
set nu

" set highlighting all search matches
set hlsearch

" enable syntax highliting
syntax on

" enable mouse
set mouse=a

" settings for spaces and tabs
set expandtab "enable inserting spaces instead of tab
set tabstop=2 "number of spaces instead of tab
set shiftwidth=2 "number of spaces for auto indent
set softtabstop=2

" set colorscheme
colorscheme wombat

" disable creating backup and swap files
set nobackup
set nowritebackup
set noswapfile

" save undo file
set undofile
set undodir=$HOME/.vim/undo//

" set backspace key
set backspace=indent,eol,start

" Set go to next or previous line when pressed right or left arrows
set whichwrap+=<,>,[,]

" set key toggle of paste mode
set pastetoggle=<F7>

if has("gui_running")
  " hide toolbar
  set guioptions-=T
  " set font
  if has("gui_gtk3")
    set guifont=Hack\ 9
  else
    set guifont=Hack:h9
  endif
endif

"*****************************************************************
"*                      Own script settings                      *
"*****************************************************************

" To enable the saving and restoring of screen positions.
let g:screen_size_restore_pos = 1

" To save and restore screen for each Vim instance.
" This is useful if you routinely run more than one Vim instance.
" For all Vim to use the same settings, change this to 0.
let g:screen_size_by_vim_instance = 1


"*****************************************************************
"*                           Mappings                            *
"*****************************************************************

"------------------------- Paste from clipboard ------------------
if has("gui_running")
  nmap  <silent>  <S-Insert>  "+gP
  imap  <silent>  <S-Insert>  <Esc>"+gpa
  vmap  <silent>  <C-Insert> "+y
endif

"------------------------- Change window--------------------------
imap <C-w><C-w> <esc><C-w><C-w>

"--------------------------- Undo/Redo ---------------------------
nmap <silent> <C-z> :undo<CR>
imap <silent> <C-z> <esc>:undo<CR>a
vmap <silent> <C-z> <esc>:undo<CR>i

nmap <silent> <C-y> :redo<CR>
imap <silent> <C-y> <esc>:redo<CR>i
vmap <silent> <C-y> <esc>:redo<CR>i


"----------------------------- Save ------------------------------
noremap <silent> <C-s> :update<CR>
inoremap <silent> <C-s> <c-o>:update<CR>
vnoremap <silent> <C-s> <c-c>:update<CR>


"*****************************************************************
"*                       Plugins settings                        *
"*****************************************************************

"---------------------- Vim-xkbswitch ----------------------------
let g:XkbSwitchEnabled = 1

"------------------------- Emmet ---------------------------------
 let g:user_emmet_leader_key='<C-G>'
" let g:user_emmet_mode='a'
" let g:user_emmet_install_global = 0
" autocmd FileType html,css EmmetInstall


"------------------------ NERDTree -------------------------------
nmap <silent> <C-n>t :NERDTreeToggle<CR>
imap <silent> <C-n>t <Esc>:NERDTreeToggle<CR>
vmap <silent> <C-n>t <Esc>:NERDTreeToggle<CR>

"--------------------- YouCompleteMe -----------------------------
nnoremap <silent> <C-b> :YcmCompleter GoTo<CR>

"------------------------- Airline -------------------------------
let g:airline_theme = 'jellybeans'
let g:airline_powerline_fonts = 1


"----------------------- Vim-sessions ----------------------------
let g:session_autosave = 'no'
