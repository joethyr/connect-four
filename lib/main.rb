require_relative 'game'

connect_four = Game.new(Player.new('O'), Player.new('X'))
connect_four.play
