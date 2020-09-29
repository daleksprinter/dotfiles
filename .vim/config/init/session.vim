let s:session_path = expand('~/.vim/sessions')

if !isdirectory(s:session_path)
    call mkdir(s:session_path, "p")
endif

" save session
command! -nargs=1 SaveSession call s:saveSession(<f-args>)
function! s:saveSession(file)
    execute 'silent mksession!' s:session_path . '/' . a:file
endfunction

" load session
command! -nargs=1 LoadSession call s:loadSession(<f-args>)
function! s:loadSession(file)
    execute 'silent source' a:file
endfunction

command! FloadSession call fzf#run({
\  'source': split(glob(s:session_path . "/*"), "\n"),
\  'sink':    function('s:loadSession'),
\  'options': '-m -x +s',
\  'down':    '40%'})
