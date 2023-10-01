" Numbering and Identation
set number
set numberwidth=1
set shiftwidth=2

" Syntax 
set encoding=utf-8
set showmatch
set mat=2

"" Delete trailing white space on save
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'junegunn/rainbow_parentheses.vim'
call plug#end()

" Automatically install plugins
autocmd VimEnter *
	    \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
	    \|   PlugInstall --sync | q
	    \| endif

" Color
syntax on
let g:lightline = {
      \ 'colorscheme': 'simpleblack',
      \ }
colorscheme advantage

" Status line
set laststatus=2
set noshowmode

" Sounds and Noises
set noerrorbells
set novisualbell

" Backup
set nobackup
set noswapfile
set nowritebackup
