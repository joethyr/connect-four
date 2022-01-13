class Player
attr_reader :color, :choices

  def initialize(color)
    @color = color
    @choices = []
  end
end
