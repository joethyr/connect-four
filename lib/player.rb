class Player
attr_reader :symbol, :choices

  def initialize(symbol)
    @symbol = symbol
    @choices = []
  end
end
