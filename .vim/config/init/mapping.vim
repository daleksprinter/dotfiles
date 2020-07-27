let mapleader = "\<Space>"
"keybind
nnoremap O :<C-u>call append(expand('.'), '')<Cr>j

nnoremap ; :
nnoremap : ;
map <S-k> <Nop>

noremap a 0
noremap f $l

nnoremap J gT
nnoremap K gt
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
noremap <C-k> {
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

nmap <esc><esc> :nohlsearch<cr><esc>

"tab move
nnoremap    [Tag]   <Nop>
nmap   t [Tag]
for n in range(1, 9)
	execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor

nnoremap <silent> [Tag]c :tablast <bar> tabnew<CR>
nnoremap <silent> [Tag]x :tabclose<CR>
nnoremap <silent> [Tag]n :tabnext<CR>
nnoremap <silent> [Tag]p :tabprevious<CR>
