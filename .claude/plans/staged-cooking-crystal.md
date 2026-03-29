# coc-nvim を vim 設定から削除する

## Context
coc-nvim を使用していないため、dotfiles の vim 設定から完全に削除する。

## 変更内容

### 1. `src/vim/conf/.vim/config/plugin.vim` (24行目)
- `Plug 'neoclide/coc.nvim', {'branch': 'release'}` の行を削除

### 2. `src/vim/conf/.vim/config/coc.nvim.vim` — ファイル削除
- coc-nvim 用のキーマップ・設定ファイルをまるごと削除
- `.vimrc` は `runtime! config/*.vim` で読み込んでいるため、ファイル削除だけで読み込まれなくなる

### 3. `src/vim/conf/.vim/config/basic.vim` (67行目)
- `autocmd FileType scala let b:coc_root_patterns = ['build.sbt']` の行を削除
- 直後の `au BufRead,BufNewFile *.sbt set filetype=scala` (68行目) は coc 非依存なので残す

### 4. `src/vim/conf/.vim/coc-settings.json` — ファイル削除
- coc-nvim 用の Language Server 設定ファイルを削除

## 検証
- vim を起動してエラーが出ないことを確認
