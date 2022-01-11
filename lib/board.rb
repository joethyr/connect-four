class Board
  attr_reader :positions

  def initialize
    @positions = build_positions
  end

  def build_positions(arr = [])
    6.times do |clmn|
      7.times do |row|
        arr << [clmn, row]
      end
    end
    arr
  end
end


joe = Board.new
p joe.positions
