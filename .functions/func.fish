function cd
  builtin cd $argv
  ls -a
end

function aws
    awsmfa -q; command aws $argv
end

function cdf
    set dist (fd --type d | fzf)
    cat $dist
    cd $dist
end


function urlencode
  echo "$1" | nkf -WwMQ | sed 's/=$//g' | tr = % | tr -d '\n'
end
