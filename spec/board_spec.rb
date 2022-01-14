require 'board'

RSpec.describe Board do
  describe '#space_available?' do
    it "returns true if spaces on board is available" do
      expect(subject.space_available?(6)).to eql(true)
    end
  end
  describe '#update_grid' do
    it 'updates the values within the grid variable'do
      expect(subject.update_grid(1)).to eql('o')
    end
  end
end
