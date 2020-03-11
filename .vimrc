"plugin
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'othree/yajs.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'Shougo/neocomplete.vim'
Plug 'alvan/vim-closetag'
Plug 'osyo-manga/vim-brightest'
call plug#end()

"NREDTree
nnoremap <silent><C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
"keybind
inoremap <silent> jj <ESC>
nnoremap O :<C-u>call append(expand('.'), '')<Cr>j
nnoremap a 0
nnoremap f $

nnoremap ; :
nnoremap : ;
inoremap <silent> jj <ESC>
map <S-k> <Nop>
"keybind - tab move
nnoremap J gT
nnoremap K gt

set scrolloff=5

"検索行が真ん中に来るようにする
nmap n nzz 
nmap N Nzz 
nmap * *zz 
nmap # #zz 
nmap g* g*zz 
nmap g# g#zz

"keybind - emacs
inoremap <C-d> <Del>
inoremap <C-h> <BS>
inoremap <C-a> <home>
inoremap <C-e> <End>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-f> <right>
inoremap <C-b> <left>

"keybind - cursormove
nnoremap <C-j> }
nnoremap <C-k> {
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk
set whichwrap=b,s,h,l,<,>,[,]

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
nmap <Esc><Esc> :nohlsearch<CR><Esc>
"editor - basic
set mouse=a
set modifiable
set write
syntax on
set clipboard=unnamed,autoselect
set virtualedit=onemore
set noerrorbells
set backspace=indent,eol,start
set autoread
set smartindent
set title


"ファイル開いた時に最後に編集した行に移動
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"editor - theme
colorscheme slate

set noswapfile

"editor - tab setting
set tabstop=4
set shiftwidth=4

"undo永続化
if has('persistent_undo')
	set undodir=~/.vim/undo
	set undofile
endif

let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet']

" 補完表示時のEnterで改行をしない
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"

set completeopt=menuone,noinsert
inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"

let g:neocomplete#enable_at_startup = 1



let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.js"

"xでヤンクしない
nnoremap x "_x"
set encoding=utf-8

let g:brightest#highlight = {
\   "group" : "BrightestUnderline"
\}
set breakindent
