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

"colorscheme murphy
"colorscheme desert
hi Comment ctermfg=blue

" no error bells, no beep or flash
set noeb vb t_vb=

" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

let g:pydiction_location = '/home/jbarber/.vim/bundle/pydiction-1.2/plugin/complete-dict'
" enable loading the plugin files, (filetype plugin indent on) enable loading the indent file
filetype plugin on
