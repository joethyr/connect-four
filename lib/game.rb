require_relative 'player'
require_relative 'board'

class Game
  attr_accessor :board, :player1, :player2, :active_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @board = Board.new
    @active_player = player1
  end

  def play
    introduction
    loop do
      input = player_turn(active_player)
      board.update_grid(input, active_player)
      board.display_board
      break if player_won?(active_player)

      switch_active_player(active_player)
    end
  end

  def introduction
    print "Hello Player #{player1.symbol} and Player #{player2.symbol}. "
    puts  "Lets play a game of Connect 4!"
  end

  def player_won?(player)
    return unless board.winning_moves == true

    puts "Player #{player.symbol} has won the game!"
    play_again?
  end

  def play_again?
    puts "Would you like to play again? (y/n)\n> "
    input = gets.chomp.downcase
    return Game.new(Player.new('O'), Player.new('X')).play if input == 'y'

    exit if input == 'n'

    puts "incorrect input."
    play_again?
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
