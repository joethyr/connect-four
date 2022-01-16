require_relative 'player'
require_relative 'board'

class Game
  # attr_reader
  attr_accessor :board, :player1, :player2, :game_over, :active_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @board = Board.new
    @game_over = false
    @active_player = player1
  end

  def play
    until game_over == true
      input = player_turn(active_player)
      board.update_grid(input, active_player)
      board.display_board
      p board.horizontal_moves
      switch_active_player(active_player)
      # player_won?(player)
    end
  end

  def switch_active_player(active_player)
    if active_player == player1
      @active_player = player2
    else
      @active_player = player1
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
end

test = Game.new(Player.new('O'), Player.new('X'))
test.play
