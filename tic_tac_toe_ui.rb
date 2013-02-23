require './lib/player'
require './lib/board'

players = [Player.new('X'), Player.new('O')]
board = Board.new

puts "Welcome to Tic-Tac-Total!"
puts "Here is the empty board:"
p board
puts "Get ready to place your marks."

players.each do |player|
  p board
  puts "Your mark is #{player.mark}. Where do you want to put it?"
  # print "Which board:"
  print "Which row:"
  row = gets.chomp.to_i
  print "Which column:"
  column = gets.chomp.to_i
  board.set_mark(row, column, player)
end