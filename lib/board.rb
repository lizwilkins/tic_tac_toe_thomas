class Board
  def initialize
    @board = Array.new(3) {Array.new(3) {Array.new(3) {' '}}}
  end

  def set_mark(vertical, row, column, player)
    @board[vertical -1][row -1][column -1] = player.mark
  end

  def to_s
    print ".............\n"
    @board.each do |vertical|
      vertical.each do |row|
        row.each do |column|
          print " #{column} |"
        end
        puts "\n.............\n"
      end
      puts "\n.............\n"
    end
  end

  def winner
    # @board.each do |vertical|   #rows on each horizontal board
    #   vertical.each do |row|
    #     if (row[1] == row[0] && row[1] == row[2]) then return row[1] end
    #   end
    # end

    # @board.each do |vertical|   #columns on each horizontal board
    #   vertical.transpose.each do |row|
    #     if (row[1] == row[0] && row[1] == row[2]) then return row[1] end
    #   end
    # end

    @board.each do |vertical|
      p "#{vertical[1][1]}"
      p "#{vertical[0][0]}"
      p "#{vertical[2][2]}"
      if (vertical[1][1] == vertical[0][0]) && (vertical[1][1] == vertical[2][2]) ||  #diagonals on each horizontal board
         (vertical[1][1] == vertical[0][2]) && (vertical[1][1] == vertical[2][0])
          return vertical[1][1]
      end
    end
    nil
  end
end
