" Generic .vimrc file for any computer                                                                     
" .vimrc file

"========================= My Settings ========================={{{

" Set the window’s title, reflecting the file currently being edited
set title
set t_Co=256

" Turn on Syntax highlighting
syntax enable
set omnifunc=syntaxcomplete#Complete  " Omni completion

" Show incomplete commands at the bottom
set showcmd

" colorscheme
colorscheme colorful256 

" Set font for cmd line
set guifont=Meslo\ LG\ S\ DZ\ Regular\ for\ Powerline

" Sets parameters for gvim
if has ('gui_running')
  "set guifont=Monospace\ 12 
  set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 14
  set guioptions-=T "removes toolbar  
endif

" Sets the intial path of my Text Folder
:cd ~/Documents/Text_Files

" Save a file as root (,W)
noremap <leader>:W !sudo tee % > ?dev?null<CR>

" Sets backup folder
set backup
set backupdir=/home/$USER/Documents/VBak
set directory=/home/$USER/Documents/VBak

"ups history from default 20
set history=200

"Sets filetypes
autocmd BufNewFile,BufRead *.md,*.mkd,*.mkdn,*.markdown set filetype=markdown
autocmd BufNewFile,BufRead *.txt,*.text set filetype=text
autocmd BufNewFile,BufRead *.html,*.htm set filetype=html

" Abbreviations
abbr _bash #!/bin/bash
abbr _python #!/usr/bin/python3
abbr _awk #!/usr/bin/awk -f

" Sets advanced encryption
set cryptmethod=blowfish2

" Set Wildmode menu
set wildmode=longest,list
set wildmenu
set showmode
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

" Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

set autoindent
set nu
set relativenumber
set linebreak
set wrap
set ruler

" turns off highlight search
set nohlsearch
set incsearch " searches characters as they are entered
set smartcase "Automatically switch search to case-sensitive when search query contains an uppercase letter

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

" Sets maximum textwidth
"set colorcolumn=80
set textwidth=87

" Moving up and down as you would expect
nnoremap <silent> j gj
nnoremap <silent> k gk

" jk is escape
inoremap jk <esc>

" The number of screen lines/columns to keep beside/above/below the cursor
set scrolloff=1
set sidescrolloff=5

" Sets location of internal terminal
noremap \\t :below terminal<CR>
" noremap \\t :botright vertical terminal<CR>

" Easy use of system clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>y "+yy
nmap <Leader>p "+p
vmap <Leader>p "+p

" Open netrw/fzf/search
nmap <Leader>x :Explore<CR>
nmap <Leader>f :Files<CR>

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

" Re-index ctags
:autocmd BufWritePost * call system("ctags -R")

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

" Easier Moving page at a time
nmap <leader>d <C-d>
nmap <leader>u <C-u>
vmap <leader>d <C-d>
vmap <leader>u <C-u>

" sets Ctrl-t for new tab
nnoremap <C-t> :tabnew<cr>

" Make splits where you want
set splitbelow splitright

" Make adjusting split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

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

" Ordered list incrementing with ,<enter>
inoremap <leader><cr> <esc>Yp<C-a>elC

" Buffers
" new empty buffer
nmap <Leader>t :enew<CR>
" moves to the next buffer
nmap <Leader>l :bnext<CR>
" moves to the previous buffer
nmap <Leader>h :bprevious<CR>
" closes the current buffer moves to the previous one
nmap <Leader>bd :bd<CR>
" shows all open buffers and their status
nmap <leader>bl :ls<CR>

" file operations
nmap <C-s> :w<CR>
nmap <C-q> :q<CR>

"}}}
"========================= Printing ==========================={{{

"Takes out header in print options
set popt=header:0

"}}}
"========================= Plugins ============================{{{

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline/Powerline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set encoding=utf-8 " Necessary to show Unicode glyphs
set nocompatible " Disables vi-compatibility
set laststatus=2   " Always show the statusline
let g:airline_powerline_fonts=1
let g:Powerline_symbols = 'fancy'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <leader>n :NERDTree<cr>
" Close NERDTree after file is open
let g:NERDTreeQuitOnOpen=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pathogen
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UltiSnips
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Trigger configuration. 
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" let g:UltiSnipsSnippetDirectories=[]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FZF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Add to the runtimepath for fzf
set rtp+=~/.fzf
set path+=**                      " Search all sudirectories and recursively

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vimwiki
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:vimwiki_list = [{'path': '~/Documents/Notes/Wiki_Notes/',
                      \ 'syntax': 'markdown', 'ext': '.wiki'}]

" Overides default behavior to see all .md files as a wiki
let g:vimwiki_ext2syntax = {'.wiki': 'markdown'}

"let g:vimwiki_global_ext = 0

"}}}
