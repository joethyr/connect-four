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
    grid[0][input - 1] == '-'
  end

  def update_grid(input, player)
    row = 5
    row -= 1 until grid[row][input - 1] == '-'

    grid[row][input - 1] = player.symbol
  end

  def winning_moves(row, cell)
    horizontal_moves ||
  end

  def horizontal_moves
    grid.each do |row|
      connected_row = row.each_cons(4).find { |a| a.uniq.length == 1 && a.first != '-' }
      return true unless connected_row.nil?
    end
    nil
  end


end

joe = Board.new
p joe.horizontal_moves
