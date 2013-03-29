"-------------- Manage Bundles -------------- {{{

"perform like vim and not vi 
set nocompatible

"required before loading in vundle bundles
filetype off 

"load vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"vundle itself
Bundle 'gmarik/vundle'

"dark colour scheme
Bundle 'tomasr/molokai'

"git integration
Bundle 'tpope/vim-fugitive'

"show git diff in gutter
Bundle 'airblade/vim-gitgutter'

"displays an autocomplete pop-up
Bundle 'vim-scripts/AutoComplPop'

"file explorer sidebar
Bundle 'scrooloose/nerdtree'

"make NERDTree look consistent across tabs
Bundle 'jistr/vim-nerdtree-tabs'

"show CSS colours
Bundle 'skammer/vim-css-color'

"quicker movement around buffer
Bundle 'Lokaltog/vim-easymotion'

"makes vim's status line sexier
Bundle 'Lokaltog/powerline'

"install powerline compatible fonts
Bundle 'Lokaltog/powerline-fonts'

"markdown syntax highlighting
Bundle 'tpope/vim-markdown'

"expand html
Bundle 'tristen/vim-sparkup'

"surround text with tags quickly
Bundle 'tpope/vim-surround'

"support for haml, sass, and scss
Bundle 'tpope/vim-haml'

"org mode for vim
Bundle 'jceb/vim-orgmode'

"re-enable filetype detection
filetype plugin indent on

"}}}

"-------------- System Settings -------------- {{{

"enable incremental search
set incsearch

"display line numbers
set number

"3 line scroll buffer
set scrolloff=3

"enable spellcheck
setlocal spell spelllang=en_us

"allow yank to osx clipboard
set clipboard+=unnamed

"set folds to be marker controlled
set foldmethod=marker

"display fold gutter column
set foldcolumn=1

"save and restore folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

"ensure no CodeKit conflicts
set nobackup
set nowritebackup
set noswapfile
au BufReadPost *.kit set syntax=html

"enable bash-like tab completion
set wildmode=longest,list,full
set wildmenu

"drupal file support
au BufReadPost *.module set syntax=php
au BufReadPost *.info set syntax=php
au BufReadPost *.inc set syntax=php

"}}}

"-------------- Text Settings -------------- {{{

"set default font
set guifont=Inconsolata_for_Powerline:h16

"enable C style auto indentation
set cindent 

"enable text wrapping
set wrap

"ensure wrapped words don't break mid-word
set linebreak

"remove random underlines
let html_no_rendering=1

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

"keep NERDTree bookmarks within vim
let NERDTreeBookmarksFile = $HOME . '/.vim/custom/.NERDTreeBookmarks' 

"}}}

"-------------- Powerline Settings -------------- {{{ 

"enable powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

"}}}

"-------------- Sparkup Settings -------------- {{{ 

"execute sparkup with ',,'
let g:sparkupExecuteMapping=',,'

"jump to next input with ',n'
let g:sparkupNextMapping=',n'

"}}}

"-------------- Markdown Settings -------------- {{{ 

"compile to markdown with ':MD'
command! MD call CompileMarkdown()
function! CompileMarkdown()
	:%!~/.vim/custom/Markdown.pl --html4tags
	:w! %:p:r.html
	u
endfunction

"}}}
