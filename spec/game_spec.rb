require 'game'
require 'player'
require 'board'

RSpec.describe Game.new(Player.new('red'), Player.new('yellow')) do
  # describe '#turn_valid?' do
  #   it "returns true" do
  #     expect(subject.turn_valid?(6)).to eql(true)
  #   end
  # end
  # describe '#player_turn' do
  #   it 'returns input if turn_valid? method is true' do
  #     expect(subject.player_turn).to eql(1)
  #   end
    # it 'calls #turn_invalid if turn_valid? method is false' do
    #   expect(subject.player_turn).to eql("input invalid. Try again.")
    # end
  # end
end
