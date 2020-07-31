" Setup Plug https://github.com/junegunn/vim-plug:
call plug#begin()
Plug 'StanAngeloff/php.vim'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdtree'
Plug '2072/PHP-Indenting-for-VIm'
Plug 'ludovicchabant/vim-gutentags'
Plug 'vimwiki/vimwiki'
call plug#end()

" Syntax higlighting, try with \"on\" if below fails:
syntax enable

" Have 256 colours
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Set colorscheme:
colorscheme vrunchbang-dark

" Enable vim filebrowser plugin:
filetype plugin on

" Show trailing whitespace:
set listchars=trail:~
set list

" Disable vi compatibility mode:
set nocompatible

" Show line numbers:
set number

" Show command:
set showcmd

" Highlight search matches:
set hlsearch

" Set recursive search:
set path+=**

" Show all matched files on tab complete:
set wildmenu

" Linux line endings:
set ff=unix

" File encoding; terminal encoding:
set fileencoding=utf-8
set encoding=utf-8

" Tab = 4 spaces, use spaces instead of tabs:
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" Status line: file, modification; lines, encoding, line ending, type:
set statusline=%<%f%m\ %=\ line:\ %l\/%L\ \|\ %{''.(&fenc!=''?&fenc:&enc).''}\ \|\ %{&ff}\ \|\ %y\ \|

" Always show statusline:
set laststatus=2

" Set internal files location
set backupdir=~/.vim/backup//,/tmp//
set directory=~/.vim/swp//,/tmp//
set undodir=~/.vim/undo//,/tmp//

" Unmap arrow keys:
no <left> <Nop>
no <down> <Nop>
no <up> <Nop>
no <right> <Nop>

vno <left> <Nop>
vno <down> <Nop>
vno <up> <Nop>
vno <right> <Nop>

ino <left> <Nop>
ino <down> <Nop>
ino <up> <Nop>
ino <right> <Nop>

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Relative line numbers in focused normal mode:
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

nnoremap ff :g/\<function\><CR>:noh<CR>
nnoremap \\ :noh<CR>
nnoremap \l :!php -l %<CR>

let g:php_syntax_extensions_disabled=[]
