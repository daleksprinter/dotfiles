"editor - basic
set whichwrap=b,s,h,l,<,>,[,]
set mouse=a
syntax on
set clipboard=unnamed,autoselect
set noerrorbells
set backspace=indent,eol,start
set virtualedit+=onemore
set ttimeoutlen=10
set completeopt=menuone,noinsert
set encoding=UTF-8
filetype plugin on
set scrolloff=5
set wildmenu
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c

"editor - display
set cursorline
set number
set showmatch 

"editor - search
set incsearch "incremental search
set ignorecase
set smartcase
set hlsearch "highlight search

"status line settings
set laststatus=2
set title

"indent settings
set breakindent
set smartindent

"file settings
set autoread
set modifiable
set write
set noswapfile

"editor - tab setting
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab

"ファイル開いた時に最後に編集した行に移動
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"undo永続化
if has('persistent_undo')
	set undodir=~/.vim/undo
	set undofile
endif

" 補完表示時のEnterで改行をしない
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"

autocmd FileType scala let b:coc_root_patterns = ['build.sbt']
au BufRead,BufNewFile *.sbt set filetype=scala
