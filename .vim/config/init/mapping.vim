let mapleader = "\<Space>"
"keybind
nnoremap O :<C-u>call append(expand('.'), '')<Cr>j

nnoremap ; :
nnoremap : ;
map <S-k> <Nop>

nnoremap Y y$

noremap a ^
noremap f $l

" nnoremap J gT
" nnoremap K gt

"disable original keybind
nnoremap <C-f> <Nop>
nnoremap <C-b> <Nop>


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
noremap <C-j> }zz
noremap <C-k> {zz
" noremap j gjzz
" nnoremap k gkzz

nmap j <Plug>(accelerated_jk_gj)zz
nmap k <Plug>(accelerated_jk_gk)zz
nnoremap <down> gjzz
nnoremap <up> gkzz
nnoremap K 10kzz
nnoremap J 10jzz
vnoremap <S-k> 10<UP>zz
vnoremap <S-j> 10<DOWN>zz
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz


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

"plugins
nnoremap <silent> [Tag]z :Goyo<CR>
nnoremap <C-t> :<C-u>Vista!!<CR>

"fzf
map <Leader>f <Nop>
nnoremap <Leader>f :<C-u>GFiles<CR>
nnoremap <Leader>b :<C-u>Buffers<CR>

"nerdtree
nnoremap [nerd]   <Nop>
nmap <Space>n [nerd]
nnoremap <silent>[nerd]f :call NERDTreeFindAndHighlight()<CR>
nnoremap <silent>[nerd]h :call NERDTreeHighlight()<CR>
