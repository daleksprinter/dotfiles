nnoremap <silent><C-e> :NERDTreeTabsToggle<CR>
let NERDTreeShowHidden=1
let g:NERDTreeMapUpdir='<C-u>'
let g:NERDTreeQuitOnOpen=0
let g:NERDTreeMapPreviewVSplit='sv'
let g:NERDTreeMapPreviewSplit='ss'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" 他のバッファをすべて閉じた時にNERDTreeが開いていたらNERDTreeも一緒に閉じる。
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Close current tab if there is only one window in it and it's NERDTree
let g:nerdtree_tabs_autoclose=1
" Synchronize view of all NERDTree windows (scroll and cursor position)
let g:nerdtree_tabs_synchronize_view=1
" Synchronize focus when switching windows (focus NERDTree after tab switch if and only if it was focused before tab switch)
" let g:nerdtree_tabs_synchronize_focus=1
" When given a directory name as a command line parameter when launching Vim, :cd into it.
let g:nerdtree_tabs_startup_cd=1
