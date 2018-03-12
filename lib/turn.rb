def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


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

def turn(board)
  puts "Please enter 1-9:"
  num = gets.strip
  newnum = input_to_index(num)
  if valid_move?(board, newnum)
    move(board, x, char="X")
  end
end

def input_to_index(n)
  index = n.to_i - 1
end

def move(board, x, char="X")
  movenum = input_to_index(x)
  board[movenum] = char
end
