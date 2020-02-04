#holds some overall logic?
class MathGame
end


#create a player and stores its id/name
#creates lives instance variable
#method to reducec lives
class Player

  def initialize(id)
    @id = id
    @name = "Player #{id}"
    @lives = 3
  end

  def reduce_lives
    @lives -= 1
  end

end

#stores the question logic, have method that outputs question when called
class Question
  #made this a class method for now but who knows
  def self.out_put
    var1 = rand(21)
    var2 = rand(21)
    puts "What does #{var1} + #{var2} equal?"
  end

end

class turn

end