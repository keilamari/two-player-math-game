class Question
  attr_accessor :attempt

  def initialize(attempt)
    @attempt = attempt
  end

  def start
    num1 = rand(1..20)
    num2 = rand(1..20)

    puts "------ NEW TURN ------"
    puts "Player #{attempt}: What does #{num1} + #{num2} equal?"
    print "> "

    answer = $stdin.gets.chomp.to_i

    if answer == num1 + num2
      puts "DING DING DING! CORRECT!"
      return true
    else 
      puts "Absolutely Not!"
      return false
    end
  end

end