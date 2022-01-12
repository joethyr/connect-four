require 'board'

RSpec.describe Board do
  describe 'display_board' do
    it 'displays a row of the board' do
      expect(subject.display_board).to eql(" | | | | | | |\n--------------\n | | | | | | |\n--------------\n | | | | | | |\n--------------\n | | | | | | |\n--------------\n | | | | | | |\n--------------\n | | | | | | |\n--------------\n")
    end
  end
end

