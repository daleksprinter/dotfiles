function fvim
	set gdir (git rev-parse --show-toplevel)
	set len (echo $gdir/ | wc -c | sed 's/ //g')
	set bat (echo bat $gdir/{})
	set file (find $gdir -type f | cut -c $len- | fzf --preview $bat)
	vim $file
end

function repo
	set len (ghq root | wc -c | sed 's/ //g')
	set dir (ghq list -p | cut -c $len- | fzf --preview 'ls -a {}')
	cd (ghq root)$dir
end
