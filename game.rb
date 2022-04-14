class Game
  attr_accessor :attempt, :player1, :player2

  def initialize
    @attempt = 1
    @player1 = 3
    @player2 = 3
  end 


  def game_over
    puts "Player 1: #{@player1}/3 lives. Player 2: #{@player2}/3 lives."
    puts "------ GAME OVER ------"
    exit(0)
  end

  def update_lives(attempt)
    if attempt == 1
      @player1 -= 1
    else 
      @player2 -= 1
    end
    if @player1 == 0 || @player2 == 0
      game_over
    end
  end

  def update_attempt(attempt)
    if attempt == 1
      @attempt = 2
    else
      @attempt = 1
    end
    start
  end

  def start
    puts "Player 1: #{@player1}/3 lives. Player 2: #{@player2}/3 lives."

    question = Question.new(attempt)
    if !question.start
      update_lives(attempt)
    end
    update_attempt(attempt)
  end
  
end