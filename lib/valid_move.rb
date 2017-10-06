# code your #valid_move? method here
def valid_move?(board, index)
  valid = nil
  if is_valid_index?(index)
    if position_taken?(board,index)
        valid = false
    else
        valid = true
    end
  else
      valid = false
  end
  return valid
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  if (board[index] == " " || board[index] == "" ||
	    board[index] == nil)
	    return false
  elsif board[index] == "X" || board[index] == "O"
	   return true
  end
end
def is_valid_index?(index)
  return index.between?(0,8)
end
