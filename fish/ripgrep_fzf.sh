#!/usr/bin/env bash

# TODO: port this to fish 

# from https://github.com/junegunn/fzf/blob/master/ADVANCED.md#ripgrep-integration

RG_PREFIX="rg --column --line-number --no-heading --smart-case "
INITIAL_QUERY="${*:-}"
FZF_DEFAULT_COMMAND="$RG_PREFIX $(printf %q "$INITIAL_QUERY")" \ 
fzf --ansi \
    --disabled --query "$INITIAL_QUERY" \
    --bind "change:reload:sleep 0.1; $RG_PREFIX {q} || true" \
    --delimiter : \
    --preview 'bat {1} --highlight-line {2}' \
    --preview-window 'up,60%,border-bottom,+{2}+3/3,~3' \
    --bind 'enter:become(vim {1} +{2})'