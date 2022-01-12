class Board
  attr_reader :coordinates

  def initialize
    @coordinates = Array.new(6) { Array.new(7) { " " } }
  end

  def display_board
    row_sep = "\n--------------\n"

    row = coordinates.map do |i|
      cell = i.map do |e|
        "#{e}|"
      end
      cell.join('').concat(row_sep)
    end
    row.join('')
  end
end

joe = Board.new
