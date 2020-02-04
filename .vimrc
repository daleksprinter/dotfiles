"plugin
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'jiangmiao/auto-pairs'
call plug#end()

"NREDTree
nnoremap <silent><C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"keybind
inoremap <silent> jj <ESC>
nnoremap O :<C-u>call append(expand('.'), '')<Cr>j
inoremap <C-d> <Del>
inoremap <C-h> <BS>
inoremap <C-a> <home>
inoremap <C-e> <End>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-f> <right>
inoremap <C-b> <left>

"editor - display
set cursorline
set cursorcolumn
set number
set showmatch 

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
set title
