class Player
  attr_accessor :id, :lives

  def initialize(id)
    @id = id
    @lives = 3
  end

  def reduce_lives
    @lives -= 1
  end

end

# @playerA = Player.new(4)

# puts @playerA.id
# puts @playerA.lives
# @playerA.reduce_lives
# puts @playerA.lives

