function nsg
    sudo netstat -natp | rg -i $argv
end
