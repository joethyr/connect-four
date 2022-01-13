class Board
  attr_accessor :grid

  def initialize
    @grid = Array.new(6) { Array.new(7) { '-' } }
  end

  def display_board
    @grid.each do |row|
      puts row.join(' ')
    end
    puts [*0..6].join(' ')
  end

  def space_available?(input)
    return true if grid[0][input] == '-'

    false
  end
end

joe = Board.new
puts joe.grid[0][1]
puts joe.grid[1][2]
