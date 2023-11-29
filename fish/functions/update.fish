function update 
    # update dnf 
    sudo dnf upgrade -y
    # update flatpak
    flatpak update
    # update cargo packages from cargo-install
    cargo install-update -a
    
end

