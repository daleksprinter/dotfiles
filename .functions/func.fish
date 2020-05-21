function fvim
	set gdir (git rev-parse --show-toplevel)
	set file (find $gdir -type f | fzf --preview 'bat {}')
	vim $file
end

function repo
	set dir (ghq list -p | fzf --preview 'ls -a {}')
	cd $dir
end
