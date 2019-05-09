require "colorize"
require "pry"


class RandomAnswers 
  attr_accessor :ans, :num
  def initialize(ans, num)
    @ans = ans
    @num = num

  end
end 


class MagicEightBall



  attr_accessor 
  def initialize

    @random_answers = [
      RandomAnswers.new("Ask again", 1),
      RandomAnswers.new("Pure folly", 2),
      RandomAnswers.new("Perhaps in time", 3),
      RandomAnswers.new("Let me check back on that", 4),
      RandomAnswers.new("People do", 5),
      RandomAnswers.new("This is your lucky day", 6),
      RandomAnswers.new("Eat Chicken instead", 7),
      RandomAnswers.new("Outlook is Sunny", 8),
      RandomAnswers.new("Like Walking on Sunshine, don't it feel good", 9),
      RandomAnswers.new("Your mom goes to college", 10)]
    greet
    magic_answer
  end

  def greet
    print `clear`
    seperator
    puts "Ask me anything and I will tell you something else".colorize(:blue)
    seperator

  end

  def magic_answer
    input = gets.strip
    print `clear`
    sleep 1
    seperator
    puts @random_answers[1].ans.colorize(:blue)
    seperator

    
  end








  def seperator
    puts "\n\n"
    puts "(*)".colorize(:yellow) *40
    puts "\n\n"
  end
 


end

MagicEightBall.new