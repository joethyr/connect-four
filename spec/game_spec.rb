require 'game'
require 'player'
require 'board'

RSpec.describe Game.new(Player.new('red'), Player.new('yellow')) do
  describe '#turn_valid?' do
    it "returns true" do
      expect(subject.turn_valid?(6)).to eql(true)
    end
  end
end
