require_relative 'player'
require_relative 'board'

class Game
  # attr_reader
  attr_accessor :board, :player1, :player2, :game_over, :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @board = Board.new
    @game_over = false
    @current_player = player1
    play
  end

  def play
    until game_over == true
      input = player_turn(current_player)
      board.update_grid(input, current_player)
      board.display_board
      switch_active_player(current_player)
      # player_won?(player)
    end
  end

  def switch_active_player(current_player)
    if current_player == player1
      @current_player = player2
    else
      @current_player = player1
    end
  end

  def player_turn(player)
    print "Player #{player.symbol}, please enter the number of the column you will occupy:\n> "
    turn_valid?(gets.chomp.to_i, player)
  end

  def turn_valid?(input, player)
    return input if [*1..7].include?(input) && board.space_available?(input)

    puts "input invalid. Try again."
    player_turn(player)
  end

  # def player_won?(player)
  #   # code that checks if the player has won
  #   if board.check_grid(player) == true
  #   puts "player has won!"
  # end
end

test = Game.new(Player.new('O'), Player.new('X'))
