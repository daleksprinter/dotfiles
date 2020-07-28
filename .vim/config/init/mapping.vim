let mapleader = "\<Space>"
"keybind
nnoremap O :<C-u>call append(expand('.'), '')<Cr>j

nnoremap ; :
nnoremap : ;
map <S-k> <Nop>

nnoremap Y y$

noremap a ^
noremap f $l

nnoremap J gT
nnoremap K gt

"検索行が真ん中に来るようにする
nmap n nzz 
nnoremap N Nzzzv
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
inoremap <C-k> <Esc>lc$

"keybind - cursormove
noremap <C-j> }
noremap <C-k> {
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

nmap <esc><esc> :nohlsearch<cr><esc>

"keybind split, moving window
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR><C-w>j
nnoremap sv :<C-u>vs<CR><C-w>l
nnoremap sz :call ToggleWindowSize()<CR>

"tab move
nnoremap    [Tag]   <Nop>
nmap   s [Tag]
for n in range(1, 9)
	execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor

nnoremap <silent> [Tag]c :tablast <bar> tabnew<CR>
nnoremap <silent> [Tag]x :tabclose<CR>
nnoremap <silent> [Tag]n :tabnext<CR>
nnoremap <silent> [Tag]p :tabprevious<CR>

nnoremap <C-t> :<C-u>Vista coc<CR>
