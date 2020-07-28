call plug#begin()
"filer
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'

"git plugin
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"linter, syntax checker
"Plug 'dense-analysis/ale'
Plug 'sheerun/vim-polyglot'

"basics
Plug 'liuchengxu/vista.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tomtom/tcomment_vim'
" Plug 'alvan/vim-closetag'
Plug 'osyo-manga/vim-brightest'
Plug 'tpope/vim-surround'
Plug 'nathanaelkane/vim-indent-guides'
" Plug 'vim-airline/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'simeji/winresizer'
Plug 'easymotion/vim-easymotion'
"
" Plug 'Shougo/neocomplcache.vim'
" Plug 'Shougo/neosnippet'
" Plug 'Shougo/neosnippet-snippets'
"
"theme
Plug 'arcticicestudio/nord-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" "language support
" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Plug 'mattn/vim-lsp-settings'
"

Plug 'mattn/vim-goimports'
Plug 'maxmellon/vim-jsx-pretty'


" "javascript
" Plug 'othree/yajs.vim'
"
" "golang
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"
" "fish
" Plug 'dag/vim-fish'
call plug#end()
