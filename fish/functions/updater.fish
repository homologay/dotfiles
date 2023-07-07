function updater 
    set_color FC7ED4; echo "XBPS <3"; set_color normal
    sleep 0.5;
    sudo xbps-install -Su -y # i think one of these is to update the repo? or something?
    sudo xbps-install -Su -y
    set_color FC7ED4; echo "RUST <3"; set_color normal
    sleep 0.5;
    rustup update
    cargo install-update -a
end
