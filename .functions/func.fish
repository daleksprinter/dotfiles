function cd-git-root
	set err_msg "No git root found, This dir may not be under ghq root"

	set dir (pwd)
	if [ $dir = / ]
		echo $err_msg
		return
	end

	set -a path (string split / $dir)
	set repos (ghq list --full-path)
	
    while true
	 if [ (count $path) -eq 1 ]
	     echo $err_msg
		 return
	 end

	 set now_dir (string join / $path)
	 for x in $repos

		 if [ $now_dir = $x ] 
			 cd $x
			 return
		 end
	 end
	 set cnt (count $path)
	 set cnt (expr $cnt - 1)
	 set path $path[1..$cnt]
	end
end

alias gr cd-git-root
