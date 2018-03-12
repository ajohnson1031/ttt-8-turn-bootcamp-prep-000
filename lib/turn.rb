def valid_move?(board, x)
  if x.between?(0,8) && !position_taken?(board, x)
    true
  else
    false
  end
end

def position_taken?(board, x)
  if board[x] == " " || board[x] == "" || board[x] == nil
    false
  elsif board[x] == "X" || board[x] == "O"
    true
  end
end
