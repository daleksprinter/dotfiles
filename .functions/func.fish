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

function vimp
    set usage "Usage: vimp"
    if test $argv[1] = 'add'
        if test -z $argv[2]
            echo $usage
        else
            set file {$HOME}/.vim/config/init/plugin.vim
            set row "Plug \'$argv[2]\'"
            #TODO: validate github repogitory
            sed -i 2a$row $file
        end
    else if test $argv[1] = 'install'
        vim -c 'PlugInstall | q | q'
    else
        echo $usage
    end
end
