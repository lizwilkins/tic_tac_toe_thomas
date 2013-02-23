require '../lib/board'
require '../lib/player'

board = Board.new
player = Player.new('X')

puts "#{board} should be an instance of Board class"
puts "#{board.set_mark(1, 1, 1, player)} should show a board with an 'X' in the center"
puts board
puts "#{board.winner} should equal nil"
# board.set_mark(1, 1, 1, player)
# board.set_mark(1, 1, 2, player)
# board.set_mark(1, 1, 3, player)

# board.set_mark(1, 1, 1, player)
# board.set_mark(1, 2, 1, player)
# board.set_mark(1, 3, 1, player)

board.set_mark(1, 1, 1, player)
board.set_mark(1, 2, 2, player)
board.set_mark(1, 3, 3, player)

puts board
winner = board.winner
if winner != nil then puts "#{winner} wins!" end