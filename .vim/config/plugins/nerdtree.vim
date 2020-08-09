nnoremap <silent><C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:NERDTreeMapUpdir='<C-u>'
let g:NERDTreeQuitOnOpen=0
let g:NERDTreeMapPreviewVSplit='sv'
let g:NERDTreeMapPreviewSplit='ss'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
