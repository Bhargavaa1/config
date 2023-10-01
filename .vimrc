" Numbering and Identation
set number
set numberwidth=1
set shiftwidth=2

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
call plug#end()

" Color
syntax on
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'simpleblack',
      \ }
colorscheme advantage
