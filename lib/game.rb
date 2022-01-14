require_relative 'player'
require_relative 'board'


class Game
  attr_reader :player1, :player2
  attr_accessor :board

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @board = Board.new
  end

  # def play(player)
  #   player_turn(player)
  #   update grid
  #   update player choices with grid[i][e]
  #   check if won/lost/tie
  #   switch players
  # end

  def player_turn
    puts "player, please enter the number of the column you will occupy:\n>"
    input = gets.chomp.to_i
    turn_valid?(input)
  end

  def turn_valid?(input)
    return if [*0..6].include?(input) && board.space_available?(input)

    puts "input invalid. Try again."
    player_turn
  end

  def player_won?
    # code that checks if the player has won
    if board.check_grid == true
    puts "player has won!"
  end
end

# test = Game.new(Player.new('red'), Player.new('yellow'))
