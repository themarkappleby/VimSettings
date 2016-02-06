"-------------- Manage Bundles -------------- {{{

"perform like vim and not vi 
set nocompatible

"required before loading in vundle bundles
filetype off 

"load vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"vundle itself
Plugin 'VundleVim/Vundle.vim'

"dark colour scheme
Plugin 'tomasr/molokai'

"show git diff in gutter
Plugin 'airblade/vim-gitgutter'

"displays an autocomplete pop-up
Plugin 'vim-scripts/AutoComplPop'

"file explorer sidebar
Plugin 'scrooloose/nerdtree'

"make NERDTree look consistent across tabs
Plugin 'jistr/vim-nerdtree-tabs'

"show CSS colours
Plugin 'skammer/vim-css-color'

"makes vim's status line sexier
Plugin 'Lokaltog/powerline'

"install powerline compatible fonts
"note - once downloaded these fonts will need to be install with OSX FontBook
Plugin 'Lokaltog/powerline-fonts'

"Stylus syntax highlighting
Plugin 'vim-scripts/vim-stylus'

"Jade syntax highlighting
Plugin 'vim-scripts/jade.vim'

"re-enable filetype detection
call vundle#end()
filetype plugin indent on

"}}}

"-------------- System Settings -------------- {{{

"enable incremental search
set incsearch

"enable case-insensitive search
set smartcase

"display line numbers
set number

"3 line scroll buffer
set scrolloff=3

"enable spellcheck
"`z=` when cursor is on a incorrectly spelled word
setlocal spell spelllang=en_us

"allow yank to osx clipboard
set clipboard+=unnamed

"set folds to be marker controlled
set foldmethod=marker

"display fold gutter column
set foldcolumn=1

"enable bash-like tab completion
set wildmode=longest,list,full
set wildmenu

"stylus file suport
au BufReadPost *.styl set filetype=stylus

"Jade file suport
au BufReadPost *.jade set filetype=jade

"}}}

"-------------- Text Settings -------------- {{{

"set default font
set guifont=Inconsolata_for_Powerline:h26

"enable C style auto indentation
set cindent 

"enable text wrapping
set wrap

"ensure wrapped words don't break mid-word
set linebreak

"remove random underlines
let html_no_rendering=1

"use two spaces instead of tabs
set expandtab
set shiftwidth=2
set tabstop=2

"}}}

"-------------- Colour Settings -------------- {{{

"enable syntax highlighting
syntax on

"select colour scheme
let g:molokai_original=1
colorscheme molokai

"set search highlighting to black on white
hi Search guibg=#ffffff guifg=#000000

"set visual highlighting to black on white
hi Visual guibg=#ffffff guifg=#000000

"make default cursor hot pink
highlight Cursor guifg=#ffffff guibg=#FA2DAE

"highlight current line
set cursorline

"}}}

"-------------- Keyboard Settings -------------- {{{ 

"map the leader to ','
let mapleader=','

"toggle search highlighting with `
nnoremap ` :set hlsearch!<cr>h

"map 'jj' to exit insert mode
imap jj <Esc>

"allow 'j' and 'k' to move in wrapped lines
noremap j gj
noremap k gk

"map tab to toggle folding
nmap <tab> za

"allow control-a to copy buffer to clipboard
map <C-a> ggVy''

"move between split buffers
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"}}}

"-------------- NERDTree Settings -------------- {{{ 

"allow spacebar to toggle NERDTree
nmap <Space> :NERDTreeTabsToggle<cr>

"allow NERDTree to show hidden files
let NERDTreeShowHidden=1

"show NERDTree bookmarks
let NERDTreeShowBookmarks=1

"blur NERDTree on startup
let g:nerdtree_tabs_smart_startup_focus=2

"reduce NERDTree width
let g:NERDTreeWinSize = 20

"}}}

"-------------- Powerline Settings -------------- {{{ 

"enable powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

"}}}

