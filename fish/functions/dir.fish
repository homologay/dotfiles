function dir --wraps='cd ~ && cd (find * -type d | fzf)' --description 'alias dir cd ~ && cd (find * -type d | fzf)'
  cd ~ && cd (find * -type d | fzf) $argv
  # TODO: change find to fd        
end
