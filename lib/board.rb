class Board
  attr_accessor :grid

  def initialize
    @grid = Array.new(6) { Array.new(7) { '-' } }
  end

  def display_board
    @grid.each do |row|
      puts row.join(' ')
    end
    puts [*1..7].join(' ')
  end

  def space_available?(input)
    return true if grid[0][input -1] == '-'

    false
  end

  def update_grid(input, player)
    row = 5
    row -= 1 until grid[row][input - 1] == '-'

    grid[row][input - 1] = player.symbol
  end

  def check_grid
    return true if four_in_row
  end

  def four_in_row
    grid.each do |row|
      a = row.each_cons(4).find { |i| i.uniq.size == 1 && i.first != '-' }
      return a.first unless a.nil?
    end
    nil
  end

end

joe = Board.new
