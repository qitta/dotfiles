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
set guifont=Ubuntu\ Mono\ for\ Powerline\ 12
colorscheme obsidian

if has('gui_running')
        colorscheme summerfruit 
endif

"option name default optional 
"let g:solarized_termcolors= 256
"let g:solarized_termtrans = 0
"let g:solarized_degrade = 0
"let g:solarized_bold = 1
"let g:solarized_underline = 0
"let g:solarized_italic = 0
"let g:solarized_style = "dark"
"let g:solarized_contrast = "high" 

"set background=light

"list invisible chars :)
set list
"set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set listchars=tab:▸\ ,extends:❯,precedes:❮
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
set guioptions-=e
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
set nowrap
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

"window movement
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

"gundo settings
nnoremap <F5> :GundoToggle<CR>

set laststatus=2
set showtabline=2

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

" Python mode
" " Enable python folding
let g:pymode_folding = 0
let g:pymode_lint_checker = "pep8,mccabe"

" gitgutter
let g:gitgutter_eager = 0
  
"Autosave when focus lost
:au FocusLost * silent! wa"

let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'"

set spelllang=de

let g:airline#extensions#tabline#enabled = 1

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
