function prev --wraps=fzf\ --preview\ \'bat\ --line-range\ :200\ \{\}\' --description alias\ prev\ fzf\ --preview\ \'bat\ --line-range\ :200\ \{\}\'
  fzf --preview 'bat --line-range :200 {}' $argv
        
end
