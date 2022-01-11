class Board
  attr_reader :coordinates

  def initialize
    @coordinates = Array.new(7) { " " }
  end

  def display_board

    row_sep = "\n--------------"
    row = coordinates.map do |x|
      "#{x}|"
    end
    row.join('').concat(row_sep)
  end
end


joe = Board.new
