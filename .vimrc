"Create a symlink to the dropbox .vim folder in your home directory
"Open your local .vimrc and add the following line
"source ~/.vim/.vimrc

"disable compatabile mode
set nocp

"allow file specific settings
"allow for file specific auto indentation
"vim crawls the ftplugin directory
filetype indent plugin on

"use 'Pathogen' to manage bundles
call pathogen#infect()

"change Leader from / to ,
let mapleader=","

"map ` to toggle search highlighting
nnoremap ` :set hlsearch!<cr>h 

"ensure syntax highlighting is enabled
syntax on

"enable text wrapping
set wrap

"ensure wrapped words don't break mid-word
set linebreak

"select color scheme
let g:molokai_original = 1
colorscheme molokai

"enable incremental search
set incsearch
hi Search guibg=#ffffff guifg=#000000

"change visual selection colors
hi Visual guibg=#ffffff guifg=#000000

"remove random underlines
let html_no_rendering=1

"set default font
set guifont=Inconsolata:h16

"change default cursor color
highlight Cursor guifg=white guibg=#FA2DAE

"display line numbers
set number

"start scrolling at 3 lines before
"the edge of the page
set scrolloff=3

"highlight current line
set cul

"enable spell check
setlocal spell spelllang=en_us

"yank to OSX clipboard
set clipboard+=unnamed

"allow 'jj' to jump out of insert mode
imap jj <Esc>

"allow spacebar to toggle NERDTree
nmap <Space> :NERDTreeTabsToggle<cr>

"allow NERDTree to show hidden files
let NERDTreeShowHidden=1

"show NERDTree bookmarks by default
let NERDTreeShowBookmarks=1

"execute sparkup with ',,'
let g:sparkupExecuteMapping = ',,'

"execute sparkup next with ',n'
let g:sparkupNextMapping = ',n'

"allow MacVim to work with CodeKit
set nobackup
set nowritebackup
set noswapfile

"display powerline
set nocompatible
set laststatus=2
set encoding=utf-8
let g:Powerline_symbols='fancy'

"allow j and k to move in wordwrapped lines
noremap j gj
noremap k gk

"press ctrl-a to copy whole document to clipboard
map <C-a> ggVGy''

"switch between panes with the ctrl modifier
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"define MD command. Generates HTML file from Markdown
command! MD call CompileMarkdown()
function! CompileMarkdown()
	:%!~/.vim/bundle/markdown/Markdown.pl --html4tags
	:w! %:p:r.html
	u
endfunction

"enable bash-like file name tab completion
set wildmode=longest,list,full
set wildmenu

"required for LESS
nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>

"add fugitive to statusline
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
