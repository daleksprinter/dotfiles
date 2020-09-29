call plug#begin()
"added by vimp
Plug 'rhysd/accelerated-jk'
Plug 'Xuyuanp/scrollbar.nvim'
Plug 'rking/ag.vim'
Plug 'chr4/nginx.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'skanehira/translate.vim'
Plug 'sainnhe/edge'
Plug 'gko/vim-coloresque'
Plug 'amix/open_file_under_cursor.vim'
Plug 'hoshinotsuyoshi/vim-to-github'
Plug 'previm/previm'
Plug 'junegunn/goyo.vim'

"filer
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ryanoasis/vim-devicons'
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
Plug 'tomasr/molokai'



" "language support
" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Plug 'mattn/vim-lsp-settings'
"
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'mattn/vim-goimports'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'derekwyatt/vim-scala'
Plug 'arnaud-lb/vim-php-namespace'

" "javascript
" Plug 'othree/yajs.vim'
"
" "golang
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"
" "fish
" Plug 'dag/vim-fish'
call plug#end()
