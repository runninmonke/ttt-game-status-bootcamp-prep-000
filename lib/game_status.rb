# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
  WIN_COMBINATIONS.detect { |combo| combo.all? { |index| board[index] == "X" } || combo.all? { |index| board[index] == "O" } }
end

def full?(board)
  board.all? { |index| index == "X" || index == "O" }
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
  win = won?(board)
  if win
    win = win[0]
  end
end
