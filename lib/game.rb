class Game
  attr_reader :player1, :player2
  attr_accessor :board

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @board = Board.new
  end

end
