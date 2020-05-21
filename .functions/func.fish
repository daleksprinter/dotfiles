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
