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

  def four_in_row(grid)
    grid.each do |row|
      connected_row = row.each_cons(4).find { |a| a.uniq.length == 1 && a.first != '-' }
      return true unless connected_row.nil?
    end
    nil
  end

  def winning_moves
    four_in_row(grid) ||
    four_in_row(grid.transpose) ||
    four_in_row(diagonals(grid))
  end

  def diagonals(grid)
    (0..grid.size - 4).map do |i|
      (0..grid.size - 1 - i).map { |k| grid[i + k][k] }
    end.concat((1..grid.first.size - 4).map do |k|
      (0..grid.size - k - 1).map { |i| grid[i][k + i] }
    end)
  end

end
