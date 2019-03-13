function dev-tmux
  tmux new-session -d nvim
  tmux split-window -h -p 35
  tmux select-pane -t 1
  tmux split-window -v -p 50
  tmux -2 attach-session -d
end


