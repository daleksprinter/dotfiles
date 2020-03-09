"plugin
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'cormacrelf/vim-colors-github'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'othree/yajs.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'Shougo/neocomplete.vim'
call plug#end()

"NREDTree
nnoremap <silent><C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"keybind
inoremap <silent> jj <ESC>
nnoremap O :<C-u>call append(expand('.'), '')<Cr>j
nnoremap f :Files<CR>

map <S-k> <Nop>
"keybind - tab move
nnoremap J gT
nnoremap K gt


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
"move to line last edited when vim initialized
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
