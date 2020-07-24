"plugin
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
"Plug 'sheerun/vim-polyglot'

"basics
Plug 'jiangmiao/auto-pairs'
Plug 'tomtom/tcomment_vim'
Plug 'alvan/vim-closetag'
Plug 'osyo-manga/vim-brightest'
Plug 'tpope/vim-surround'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-airline/vim-airline'
Plug 'majutsushi/tagbar'

Plug 'simeji/winresizer'
"
" Plug 'Shougo/neocomplcache.vim'
"
" Plug 'Shougo/neosnippet'
" Plug 'Shougo/neosnippet-snippets'
"
"theme
Plug 'arcticicestudio/nord-vim'


" "language support
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'mattn/vim-lsp-settings'
Plug 'mattn/vim-goimports'



" "javascript
" Plug 'othree/yajs.vim'
" Plug 'maxmellon/vim-jsx-pretty'
" Plug 'prettier/vim-prettier'
"
" "golang
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"
" "fish
" Plug 'dag/vim-fish'
call plug#end()

"theme
colorscheme nord

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
map <S-k> <Nop>

noremap a 0
noremap f $l

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
set noerrorbells
set backspace=indent,eol,start
set autoread
set smartindent
set title
set virtualedit+=onemore
set noswapfile
set ttimeoutlen=10
set completeopt=menuone,noinsert
"ファイル開いた時に最後に編集した行に移動
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


"editor - tab setting
set tabstop=4
set shiftwidth=4

"undo永続化
if has('persistent_undo')
	set undodir=~/.vim/undo
	set undofile
endif

" 補完表示時のEnterで改行をしない
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"




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


filetype plugin indent on


"言語ごとのインデント幅の調整
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.tsx setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.js setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

nnoremap  <silent><C-t> :TagbarToggle<CR>

let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'


let mapleader = "\<Space>"


function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete

    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <Plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <Plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

let g:lsp_log_verbose = 1
let g:lsp_log_file = expand('~/vim-lsp.log')

" for asyncomplete.vim log
let g:asyncomplete_log_file = expand('~/asyncomplete.log')






let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 0
let g:asyncomplete_popup_delay = 200
let g:lsp_text_edit_enabled = 1
let g:lsp_preview_float = 1
let g:lsp_diagnostics_float_cursor = 1
let g:lsp_settings_filetype_go = ['gopls', 'golangci-lint-langserver']

let g:lsp_settings = {}
let g:lsp_settings['gopls'] = {
			\  'workspace_config': {
			\    'usePlaceholders': v:true,
			\    'analyses': {
			\      'fillstruct': v:true,
			\    },
			\  },
			\  'initialization_options': {
			\    'usePlaceholders': v:true,
			\    'analyses': {
			\      'fillstruct': v:true,
			\    },
			\  },
			\}
"
