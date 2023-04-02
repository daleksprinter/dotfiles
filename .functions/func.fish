function cd
  builtin cd $argv
  ls -a
end

function comp
	if test -z $argv[2]
		g++ -std=gnu++1y $argv[1]
	else
		g++ -std=gnu++1y $argv[1] -o $argv[2]
	end
end

#wrapper of vim-plug
function vip
    set usage "Usage: vip"
    set file {$HOME}/.vim/config/init/plugin.vim
    if test $argv[1] = 'add'
        if test -z $argv[2]
            echo $usage
        else
            set row "Plug \'$argv[2]\'"
            #TODO: validate github repogitory
            sed -i 2a$row $file
            head $file
        end
    else if test $argv[1] = 'install'
        vim -c 'PlugInstall | q | q'
    else if test $argv[1] = 'clean'
        vim -c 'PlugClean | q | q'
    else if test $argv[1] = 'list'
        cat $file | grep -v \" | grep -v call | sed  '/^$/d'
    else if test $argv[1] = 'uninstall'
        echo This command is not implemented yet.
    else if test $argv[1] = 'edit'
        vim $file
    else
        echo $usage
    end
end

function aws
    awsmfa -q; command aws $argv
end

function fzgrep
  set INITIAL_QUERY ""
  set RG_PREFIX "rg --column --line-number --no-heading --color=always --smart-case "
  set FZF_DEFAULT_COMMAND "$RG_PREFIX '$INITIAL_QUERY'" \
  echo $FZF_DEFAULT_COMMAND \
    fzf --bind "change:reload:$RG_PREFIX {q} || true" \
        --ansi --phony --query "$INITIAL_QUERY" \
        --preview 'cat `echo {} | cut -f 1 --delim ":"`'
end

function cdf
    set dist (fd --type d | fzf)
    cat $dist
    cd $dist
end


function urlencode
  echo "$1" | nkf -WwMQ | sed 's/=$//g' | tr = % | tr -d '\n'
end
