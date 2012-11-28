"------------------------------------------------------------------------------
" .vimrc
" Author: Christoph 'qitta' Piechula
"------------------------------------------------------------------------------


"tell pathogen to load all the cute plugins
filetype off
call pathogen#infect()

"basic settings
filetype plugin indent on
set modelines=0
set autoindent
set smartindent
set nocompatible
set encoding=utf-8
syntax on

"font and sh cuteness :)
set t_Co=256
set cursorline
set guifont=Ubuntu\ Mono\ for\ Powerline\ 11
colorscheme solarized

"option name default optional 
let g:solarized_termcolors= 256
let g:solarized_termtrans = 0
let g:solarized_degrade = 0
let g:solarized_bold = 1
let g:solarized_underline = 0
let g:solarized_italic = 0
let g:solarized_style = "dark"
let g:solarized_contrast = "high" 

set background=dark

"list invisible chars :)
set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set showbreak=↪
set backspace=indent,eol,start

"tabs an spaces
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

"gimme nerdy feeling
set guioptions-=T 
set guioptions-=r
set guioptions-=l
set guioptions-=b
set guioptions-=L
set guioptions-=m
set number
set ruler
set norelativenumber

"window management
au FocusLost * :silent! wall "save if focus lost
au VimResized * :wincmd = "also resize split windwos on resize

"make bar display some stuff
set showmode
set showcmd

"predator menu
set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest
set wildignore+=*.sw?
set wildignore+=*.pyc
set wildignore+=*.orig

"undo stuff
set undofile
set undoreload=1000
set undodir=~/.vim/tmp/undo//
set noswapfile

"searching
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

"misc
set wrap
set textwidth=80
set colorcolumn=+1
set hidden
set ttyfast
set lazyredraw
set completeopt=longest,menuone,preview
let g:EasyMotion_leader_key = '<Leader>'

"makes vim terminal working more smoothly
set notimeout
set ttimeout
set ttimeoutlen=10

"use supertab for omnicomplete
let g:SuperTabDefaultCompletionType = "context"

"vim javascript stuff
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"jj to run away :)
imap jj <Esc>

"gundo settings
nnoremap <F5> :GundoToggle<CR>

"powerline settings
let g:Powerline_symbols = 'fancy'
set laststatus=2

"other stuff
set cm=blowfish

"buftabs setting
noremap <f1> :bprev<CR> 
noremap <f2> :bnext<CR>
noremap <f3> :CommandT .<CR>


"python settings
augroup ft_python
    au!
    au FileType python setlocal omnifunc=pythoncomplete#Complete
augroup END

