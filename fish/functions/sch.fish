# fish port / ripgrep_all extension of https://github.com/junegunn/fzf/blob/master/ADVANCED.md#ripgrep-integration
function sch
    set RG_PREFIX "rga --column --line-number --no-heading --smart-case "
    set FZF_DEFAULT COMMAND "$RG_PREFIX "   
    fzf --ansi \
        --disabled \
        --bind "change:reload:sleep 0.1; $RG_PREFIX {q} || true" \
        --delimiter : \
        --preview 'bat {1} --highlight-line {2}' \
        --preview-window 'up,60%,border-bottom,+{2}+3/3,~3' \
        --bind 'enter:become(hx {1})'
end

# note: change bat to bat_file and hx to open_file, both from helpers.fish