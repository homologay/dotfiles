function fish_prompt
    if test -n "$SSH_TTY"
        echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
    end

    echo -n (set_color blue)(prompt_pwd)' '

    set_color -o
    echo -n (set_color cyan)'❯'(set_color white)'❯'(set_color magenta)'❯ '
    set_color normal
end
