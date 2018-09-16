" Basics {
    set nocompatible
    source $VIMRUNTIME/vimrc_example.vim
" }
 
" General {

    "Set to auto read when a file is changed from the outside
    set autoread
    " always switch to the current file directory
    set autochdir
    " Backup 
    set backup
    set backupdir=/home/louyx/.vim_backup
    set directory=/home/louyx/.vim_backup
    set undodir=/home/louyx/.vim_backup

    " How many commands to memorize
    set history=50
    " Encodings
    set fileencodings=utf-8,gbk,gb2312
    " Support all three, in this order.
    set fileformats=unix
    " Enable mouse
    set mouse=a
    " don't make noise
    set noerrorbells
    " Turn on cmdline completion wild style
    set wildmenu
    " ignore these list file extensions
    set wildignore=*.o,*.obj,*.exe,*.pyc,*.jpg,*.gif,*.png,*.pdf
" }

" Vim UI {
    colorscheme evening
    " Always show current position
    set ruler 
    " Show line number
    set number 
    " Show matching brackets
    set showmatch
    " Highlight search result
    set hlsearch
    " Case insistive search
    set ignorecase
    set smartcase
    " Inc search
    set incsearch
    " set cursorcolumn
    set cursorline
    " shortens messages
    set shortmess=a
    set showcmd
    " line wrap
    set nowrap
    " 7-lines to the cursor when scrolling to the top/bottom of screen
    set scrolloff=7
    " don't redraw when executing macros
    " set lazyredraw
" }

" Editing {
    set backspace=indent,eol,start
    " All about tabs
    set tabstop=4 
    set softtabstop=4 
    set shiftwidth=4 
    set expandtab 
    set smarttab 
    " A buffer becomes hidden when it's abandoned
    set hidden
" }

" I'm a C programmer {
    syntax on
    " Indent
    set autoindent 
    set smartindent 
    set cindent " C-style indent
    " Fold
    set foldmethod=syntax
    set foldlevelstart=20
    " tags
    set tags=./tags,../tags
    " Vertical line at col 80, only after Vim 7.3
    " set colorcolumn=80
" }

" GUI Settings {
    " GUI fonts
    " set guifont=Consolas:h10
    " set guifont=YaHei\ Consolas\ Hybrid\ 10
    " GUI widgets
    "set guioptions-=m " remove menubar
    set guioptions-=T " remove toolbar
    set guioptions-=r " remove right-hand scroll bar
    " Columns
    set columns=100
    set lines=70
" }

" Keyboard mapping {
    :imap <C-s> <Esc>:w<CR>a
" }

" Pretty JSON {
com! PrettyJSON %!python -m json.tool
" }
