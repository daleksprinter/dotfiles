filetype indent on

augroup fileTypeIndent
	autocmd!
	autocmd BufNewFile,BufRead *.tsx setlocal tabstop=4 softtabstop=4 shiftwidth=4
	autocmd BufNewFile,BufRead *.js setlocal tabstop=4 softtabstop=4 shiftwidth=4
augroup END
