let mapleader = "\<Space>"

"keybind
nnoremap O :<C-u>call append(expand('.'), '')<Cr>j

nnoremap ; :
nnoremap : ;
map <S-k> <Nop>

nnoremap Y y$

noremap H ^
noremap L $l

" nnoremap J gT
" nnoremap K gt

"検索行が真ん中に来るようにする
nmap n nzz
nnoremap N Nzzzv
nmap * *zz
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

nnoremap <C-h> hx
nnoremap <C-d> x

"keybind - cursormove
noremap <C-j> }zz
noremap <C-k> {zz
" noremap j gjzz
" nnoremap k gkzz

nmap j <Plug>(accelerated_jk_gj)zz
nmap k <Plug>(accelerated_jk_gk)zz
nnoremap <down> gjzz
nnoremap <up> gkzz
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz
nnoremap <C-f> <C-f>zz
nnoremap <C-b> <C-b>zz

nnoremap <esc><esc> :noh<cr><esc>

"keybind split, moving window
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR><C-w>j
nnoremap sv :<C-u>vs<CR><C-w>l
" nnoremap sz :call ToggleWindowSize()<CR>

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

"fzf
map <Leader>f <Nop>
nnoremap <Leader>f :<C-u>GFiles<CR>
nnoremap <Leader>b :<C-u>Buffers<CR>


nnoremap p "+p
nnoremap # :%s/<C-r>///g<Left><Left>


