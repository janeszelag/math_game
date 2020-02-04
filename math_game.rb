require './players'
require './question'

class MathGame
  attr_accessor :p1, :p1, :counter, :newQ

  def initialize
    @p1 = Player.new(1)
    @p2 = Player.new(2)
    @counter = 0
  end

  def run
    while (@p1.lives > 0 && @p2.lives > 0) do
      @counter += 1
      
      if (@counter % 2 != 0)
        current_player = 1
      else 
        current_player = 2
      end

      @newQ = Question.new
      puts "Player #{current_player}: What does #{@newQ.num1} + #{@newQ.num2} equal? "
      user_answer = gets.chomp.to_i

      if @newQ.answer == user_answer
        puts "Player #{current_player}: YES! You are correct"
      else 
        puts "Player #{current_player}: Seriously? No!"
        if current_player == 1
          @p1.reduce_lives
        else 
          @p2.reduce_lives
        end
      end

      puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"
     

      if (@p1.lives > 0 && @p2.lives > 0)
        puts "-------NEW TURN --------"
      end

    end

    if @p1.lives == 0
      puts "----------------------------"
      puts "Player 2 wins with a score of #{@p2.lives}/3"
      puts "------- GAME OVER -------"
    else 
      puts "----------------------------"
      puts "Player 1 wins with a score of #{@p1.lives}/3"
      puts "------- GAME OVER -------"
    end

  end
end
