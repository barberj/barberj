runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif


" http://vimdoc.sourceforge.net/htmldoc/options.html
" tab is 4 spaces
set ts=4

" tabs expanded to spasces 
set expandtab

" Number of spaces to use for each step of (auto)indent.
set sw=4

" show line numbers on side
set number

" Show the line and column number of the cursor position in bottom right corner
set ruler

" Ignore Case when searching
set ignorecase

" If you take time to put case into search, lets honor by searching for case
" match
set smartcase

" set the file format for line endings
" set ffs=unix

"colorscheme murphy
"colorscheme desert
hi Comment ctermfg=blue

" no error bells, no beep or flash
set noeb vb t_vb=

" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

let g:pydiction_location = '~/.vim/bundle/pydiction-1.2/plugin/complete-dict'
" enable loading the plugin files, (filetype plugin indent on) enable loading the indent file
filetype plugin on

" no backup files
set nobackup

" no backup file while editing
set nowritebackup

" no swap files
set noswapfile

" command line mappings
"cmap Q q
"cmap W w
"cmap WQ wq
cmap Vsp vsplit
cmap VSP vsplit

" strip extra space off the end of lines
"autocmd FileType python autocmd BufWritePre <buffer> :%s/\s\+$//e

" convert remove dos line endings
" autocmd FileType python autocmd BufWritePre <buffer> :%s///e

" NERDTree
" i am never gonna edit compiled files, don't show me them
let NERDTreeIgnore=['\.pyc']
let NERDTreeShowHidden=1

"To define a mapping which uses the "mapleader" variable, the special string
"<Leader>" can be used.  It is replaced with the string value of "mapleader".
"If "mapleader" is not set or empty, a backslash is used instead.  
"Example:
"    :map <Leader>A  oanother line <Esc>
"    Works like:
"        :map \A  oanother line <Esc>
"        But after:
"            :let mapleader = ","
"            It works like:
"                :map ,A  oanother line <Esc>
"
"                Note that the value of "mapleader" is used at the moment the
"                mapping is
"                defined.  Changing "mapleader" after that has no effect for
"                already defined
"                mappings.
" open
map <leader>n :NERDTreeToggle<CR>

autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4

" https://github.com/sontek/dotfiles/blob/master/_vimrc
" ctrl-jklm  changes to that split
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

let g:pep8_map='<leader>8'
let g:pyflakes_use_quickfix = 0
let g:pep8_quickfix = 0

map <leader>b :Gblame<CR>
