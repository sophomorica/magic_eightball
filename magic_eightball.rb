require "colorize"
require "pry"


class RandomAnswers 
  attr_accessor :ans
  def initialize(ans)
    @ans = ans


  end
end 


class MagicEightBall



  attr_accessor 
  def initialize

    @random_answers = [
      RandomAnswers.new("Ask again"),
      RandomAnswers.new("Pure folly"),
      RandomAnswers.new("Perhaps in time"),
      RandomAnswers.new("Let me check back on that"),
      RandomAnswers.new("People do"),
      RandomAnswers.new("This is your lucky day"),
      RandomAnswers.new("Eat Chicken instead"),
      RandomAnswers.new("Outlook is Sunny"),
      RandomAnswers.new("Like Walking on Sunshine, don't it feel good"),
      RandomAnswers.new("Your mom goes to college")]
    greet
    magic_answer
    
  end

  def greet
    print `clear`
    seperator
    puts "                            Ask me anything and I will tell you something else".colorize(:blue)
    seperator

  end

  def magic_answer
    input = gets.strip.downcase
    print `clear`
    # sleep 1
    seperator
    if input == "add_answers"
      add_answers
    elsif input == "print_answer"
      @random_answers.each do |x|
        puts x.ans.colorize(:green)
      end
    else
    puts "                                            #{@random_answers.sample.ans.colorize(:blue)}"
    seperator
    end
    
  end

  def add_answers
    print `clear`
    sleep 2
    seperator
    puts "                              You have unlocked the power to make your own future\n                                       write your own answer".upcase.colorize(:green)
    seperator
    input = gets.strip
    @random_answers << input
    # RandomAnswers.new("#{input}")
    greet 
    menu
  end







  def seperator
    puts "\n\n"
    puts "(*)".colorize(:yellow) *40
    puts "\n\n"
  end
 


end

MagicEightBall.new