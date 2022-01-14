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

  def update_grid(input)
    row = 5
    row -= 1 until grid[row][input] == '-'

    grid[row][input] = 'o'

  end

  def check_grid

  end

  def check_vertical(row, column)

end

joe = Board.new
joe.update_grid(1)
joe.display_board
