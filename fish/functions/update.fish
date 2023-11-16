function update 
    # update dnf 
    sudo dnf upgrade -y
    # update flatpak
    flatpak update
    # update cargo packages, with more involved logic since idk if cargo has an --upgrade flag or whatever?
    cargo install --list > tempfile
    echo "OKAYYYY, ready..."
    for vpair in (string trim --left --chars='\\\ \:' (sed 'n; d' tempfile)) # keep odd lines, get 'installed_version package_name' 
        # remember arrays start at 1 in fish
        echo $vpair
        set vpair_a $vpair
        echo $vpair_a[1]
        echo $vpair_a[2]
        if not test $vpair_a[1] = (cargo show --version $vpair_a[2] | awk -v N=2 '{print $N}')
            echo $vpair_a[2]
            echo $vpair_a[1]
            cargo install --force $vpair_a[2]
        end 
    end
    rm tempfile
end

# TODO: above doesn't work for cargo
