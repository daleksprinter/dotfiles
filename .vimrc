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

Plug 'prettier/vim-prettier'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 'nathanaelkane/vim-indent-guides'



call plug#end()

"vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1
" ガイドをスタートするインデントの量
"let g:indent_guides_start_level=2
" 自動カラーを無効にする
let g:indent_guides_auto_colors=0
" 奇数インデントのカラー
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#262626 ctermbg=gray
" 偶数インデントのカラー
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#3c3c3c ctermbg=darkgray
" ハイライト色の変化の幅
"let g:indent_guides_color_change_percent = 30
" ガイドの幅
"let g:indent_guides_guide_size = 1


"NREDTree
nnoremap <silent><C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:NERDTreeMapUpdir='<C-u>'
let g:NERDTreeQuitOnOpen=1

"keybind
nnoremap O :<C-u>call append(expand('.'), '')<Cr>j

nnoremap ; :
nnoremap : ;
inoremap <silent> jj <ESC>
map <S-k> <Nop>

noremap a 0
noremap f $
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
noremap <C-j> }
noremap <c-k> {
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
nmap <esc><esc> :nohlsearch<cr><esc>
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
"inoremap <expr><c-n> pumvisible() ? "<down>" : "<c-n>"
"inoremap <expr><c-p> pumvisible() ? "<up>" : "<c-p>"


let g:neocomplete#enable_at_startup = 1



let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.js"

set encoding=utf-8

let g:brightest#highlight = {
\   "group" : "BrightestUnderline"
\}
set breakindent
if has('mac')
    augroup insertLeave
        autocmd!
        autocmd InsertLeave * :call job_start(
                    \ ['osascript', '-e', 'tell application "System Events" to key code {102}'],
                    \ {'in_io': 'null', 'out_io': 'null', 'err_io': 'null'})
    augroup END
endif

set ttimeoutlen=10

filetype plugin indent on


"言語ごとのインデント幅の調整
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.tsx setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.js setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END
