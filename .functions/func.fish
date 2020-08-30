function fvim
	set gdir (git rev-parse --show-toplevel)
	set len (echo $gdir/ | wc -c | sed 's/ //g')
	set bat (echo bat $gdir/{})
	set file (rg $gdir --files | cut -c $len- | fzf --preview $bat)
	[ -z $file ] && return
	vim $file
end

function repo
	set len (ghq root | wc -c | sed 's/ //g')
	set dir (ghq list -p | cut -c $len- | fzf --preview 'ls -a {}')
	[ -z $dir ] && return
	cd (ghq root)$dir
end

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

function isRoman
    if test (inputsource) = "com.apple.inputmethod.Kotoeri.Roman"
        echo 'Roman'
    else
        echo 'Japanese'
    end
end
