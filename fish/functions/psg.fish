function psg
    ps -ef | rg -i $argv
end
