command! Pwd echo expand("%:p")
command W w !sudo tee "%" > /dev/null
command! Reload source ~/.vimrc
