board = ["O", "O", "X",
         "X", "X", "O",
         "O", "X", "X"]

WIN_COMBINATIONS = [
[0,1,2],
[3,4,5],
[6,7,8],
[0,3,6],
[1,4,7],
[2,5,8],
[0,4,8],
[2,4,6]
]

# Helper Method
def position_taken?(board, index)
 !(board[index] == " " || board[index] == "" || board[index] == nil)
end

# Define your WIN_COMBINATIONS constant

def won?(array)
  WIN_COMBINATIONS.each do |winner_set|
    if array[winner_set[0]] == array[winner_set[1]] &&
       array[winner_set[1]] == array[winner_set[2]] &&
       position_taken?(array, winner_set[0])
       puts "somebody won!"
       return true
       return winner_set
    end
  end
end

puts won?(board)

def full?(array)
 if !(array.any?{|i| i == " "})
   puts "the board is full!"
   return true
 else
   puts "the board is not yet full"
   return false
 end
end

puts full?(board)
puts
puts
puts
def draw?(array2)
  if full?(array2) && !(won?(array2))
    puts "oh no it looks like a draw!"
    return true
  else
    puts "it's not a draw afterall"
    return false
  end
end

puts draw?(board)

def over?(array3)
  if full?(array3) || !(won?(array3)) || draw?(array3)
    puts "GAME OVER"
    return true
  else
    puts "it ain't over till it's over baby!"
    return false
  end
end

puts over?(board)

def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
  end
end

puts winner(board)
