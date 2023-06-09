function updater 
    sudo xbps-install -Su -y
    rustup update
    cargo install-update -a
    # update lua packages
    # update python packages
    #     idk python is a mess for this. I don't get how pip3 works
    # update fisher
    # update npm
end
