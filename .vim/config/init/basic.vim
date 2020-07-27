set scrolloff=5
"editor - display
set cursorline
set number
set showmatch 
set laststatus=2

"editor - search
set incsearch "incremental search
set ignorecase
set smartcase
set hlsearch "highlight search
"editor - basic
set mouse=a
set modifiable
set write
syntax on
set clipboard=unnamed,autoselect
set noerrorbells
set backspace=indent,eol,start
set autoread
set smartindent
set title
set virtualedit+=onemore
set noswapfile
set ttimeoutlen=10
set completeopt=menuone,noinsert

set whichwrap=b,s,h,l,<,>,[,]

set breakindent
"editor - tab setting
set tabstop=4
set shiftwidth=4

set encoding=utf-8

filetype plugin on

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
