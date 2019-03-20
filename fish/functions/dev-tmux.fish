function dev-tmux
  tmux new-session -d
  tmux split-window -h -p 40
  tmux select-pane -t 1
  tmux split-window -v -p 50
  tmux -2 attach-session -d
end


