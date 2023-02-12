" .vimrc file settings





"========================= My Settings ========================={{{

set t_Co=256

" Turn on syntax highlighting
syntax on
syntax enable

" colorscheme
colorscheme colorful256

" Show incomplete commands at the bottom
set showcmd

" set font for cmd line
set guifont=Meslo\ LG\ S\ DZ\ Regular\ for\ Powerline

" Sets parameters for gvim
if has ('gui_running')
  "set guifont=Monospace\ 12 
  set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 14
  set guioptions-=T " removes gui toolbar
endif

" Sets the intial path of my Text Folder
:cd ~/Documents

" Sets backup folder 
set backup
set backupdir=~/Documents/VBak
set directory=~/Documents/VBak

"ups history from default 20
set history=200

"Sets filetypes
autocmd BufNewFile,BufRead *.md,*.mkd,*.mkdn,*.markdown set filetype=markdown
abbr _bash #!/bin/bash
abbr _python #!/usr/bin/python3

" Sets advanced encryption
set cryptmethod=blowfish

" Set Wildmode menu
set wildmode=longest,list
set wildmenu
set showmode
set wildignore+=*/tmp/*,*.so,*.swp,*.zip  "MacOS/Linux
set path+=**                              " Searches all Subdirectories and Recursively

" Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" sets autoindent feature
set autoindent

" set line numbering"
set nu
set relativenumber

" sets linebreak
set linebreak

" wraps text
set wrap

" set ruler
set ruler

" turns off highlight search
set nohlsearch
set incsearch "searches as characters are entered

" Beautify display of hidden characters (tabs and line breaks)
" (`:set list!` to toggle)
set listchars=tab:▸\ ,eol:¬

" sets tabstop, softtabstop, shiftwidth and expandtab settings
" set ts=8 sts=0 sw=8 noexpandtab - default settings
set ts=4 sts=4 sw=4 expandtab

" Set region to USA English
set spelllang=en_us

" Allows you to change buffer w/o saving
set hidden

" sets maximum column
set textwidth=85
"set colorcolumn=80

set showmatch " highlight matching [{()}]
" Moving up and down as you would expect
nnoremap <silent> j gj
nnoremap <silent> k gk

" jk is <Esc>
inoremap jk <esc>

" The number of lines to keep above and below the cursor
set scrolloff=1
set sidescrolloff=5 " The same for columns


"}}}
"========================= Folding ============================{{{

" Initializes fold
set foldmethod=marker
set foldlevel=0

" Space to toggle folds.
nnoremap <Space> za
vnoremap <Space> za
"}}}
"========================= Mappings ============================{{{

" Changes the leader key from \ (defaut)
let mapleader = ","

" see file explorer in tree style - Vimbits.com
let g:netrw_liststyle=3

" Sets ,v to open tab edit of my .vimrc file
nmap <leader>v :vsplit $MYVIMRC<CR>

" If .vimrc is the file open, it automatically writes and sources any
" changes
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Bubbling Single Lines of Text with arrow keys only{{{2
" no <down> ddp
" no <up> ddkP
"}}}2

" Disabling arrow keys except for bubbling text above{{{2
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
no <down> <Nop>

ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
ino <down> <Nop>

vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>
vno <down> <Nop>
"}}}2

" Remapps Autocomplete Word
:imap <F5> <C-X><C-P> 

" Remapps Autocomplete for Line
:imap <F6> <C-X><C-L>

" Remapps Autocomplete for File
:imap <F7> <C-X><C-F>

" Easy Pairing
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i

" Toggle Spell
inoremap <leader>s <ESC>:set spell<cr>
nnoremap <leader>s <ESC>:set spell<cr>
vnoremap <leader>s <ESC>:set spell<cr>

inoremap <leader>ns <ESC>:set nospell<cr>
nnoremap <leader>ns <ESC>:set nospell<cr>
vnoremap <leader>ns <ESC>:set nospell<cr>

" Save as
inoremap <leader>w <ESC>:w<cr>
nnoremap <leader>w <ESC>:w<cr>
vnoremap <leader>w <ESC>:w<cr>

" sets Ctrl-t for new tab
nnoremap <C-t> :tabnew<cr>

" easier moving between windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" creating windows where you want
nnoremap c<C-j> :bel sp new<cr>
nnoremap c<C-k> :abo sp new<cr>
nnoremap c<C-l> :rightb vsp new<cr>
nnoremap c<C-h> :lefta vsp new<cr>

"}}}
"========================= Printing ==========================={{{

"Takes out header in print options
set popt=header:0

"}}}
"========================= Plugins ============================{{{

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Powerline 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set encoding=utf-8 " Necessary to show Unicode glyphs
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
let g:airline_powerline_fonts=1
let g:Powerline_symbols = 'fancy'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>n :NERDTree<cr>
" Close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP (Fuzzy File Finder) 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"}}}
