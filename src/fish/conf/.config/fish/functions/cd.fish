function cd --description "cd with support for cd -N to go up N directories"
    if string match -qr '^-[0-9]+$' -- $argv[1]
        set -l n (string sub -s 2 -- $argv[1])
        set -l path ""
        for i in (seq $n)
            set path "$path../"
        end
        builtin cd -- $path
    else
        builtin cd $argv
    end
end
