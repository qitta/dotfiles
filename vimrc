

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
set guifont=Inconsolata\ 12
colorscheme jellybeans

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
set undoreload=10000
set history
set backup
set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//
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

"makes vim terminal working more smoothly
set notimeout
set ttimeout
set ttimeoutlen=10
