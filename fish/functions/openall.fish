function openall
    set -l all (ls -a)
    set -l files
    
    # if file is a dir, remove it 
    for f in $all
        if not test -d $f
            set --append files $f
        end
    end
    hx (for f in $files; echo $f; end)    
end
