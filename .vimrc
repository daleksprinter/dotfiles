call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'jiangmiao/auto-pairs'
call plug#end()

nnoremap <silent><C-e> :NERDTreeToggle<CR>


set modifiable
set write
set number
syntax on
inoremap <silent> jj <ESC>
let NERDTreeShowHidden=1
