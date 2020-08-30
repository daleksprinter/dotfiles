" inputsourceコマンドを使ってIMの状況を返す関数
" ことえり、Google日本語入力以外のIMを使ってる人はifの条件文を適宜弄る必要があるかと
" あと、半角カタカナや全角カタカナ、全角英数のような場合もinputsourceコマンドの出力結果を見ながら適宜追加する必要があるかと
function! IM_status()
  let l:id = substitute(system('inputsource'), '\n', '', '')
  if l:id == 'com.apple.inputmethod.Kotoeri.Roman' || l:id == 'com.google.inputmethod.Japanese.Roman'
    return ' A'
  elseif l:id == 'com.apple.inputmethod.Kotoeri.Japanese' || l:id == 'com.google.inputmethod.Japanese.base'
    return 'あ'
  else
    return ''
  endif
endfunction

" この辺は各自のstatuslineの設定に合わせてどうぞ
" let &statusline.='[%{IM_status()}]'

