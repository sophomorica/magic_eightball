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
      RandomAnswers.new("Your mom goes to college"),
      RandomAnswers.new("k")]
      @random_answers_clone = []
    greet
    
    
    magic_answer
    
  end

  def greet
    print `clear`
    seperator
    puts "                            Ask me anything and I will tell you something else".colorize(:blue)
    seperator

  end
  # def clone_array
  #   @random_answers_clone = random_answers.clone
  # end

  def magic_answer
    input = gets.strip.downcase
    print `clear`
    # sleep 1
    seperator
  
    case 
      when input == "add_answers"
        add_answers
      when input == "print_answers"
        print_answers
      when input == "exit"
        exit
      else
        answers
    end
    
  end
  def answers 
    puts "                                            #{@random_answers.sample.ans.colorize(:blue)}"
      seperator
      sleep 3
      greet
      magic_answer
  end
  def print_answers
    print `clear`
    seperator
    puts "All of my knowledge on one page:".upcase.colorize(:blue)
    @random_answers.each do |x|
      puts x.ans.colorize(:green)
      end
      seperator
  end
  

  def add_answers
    print `clear`
    # sleep 2
    seperator
    puts "                              You have unlocked the power to make your own future\n                                       write your own answer".upcase.colorize(:green)
    seperator
    input = gets.strip
    @random_answers_clone = @random_answers.map do |x| x.ans  end
    if  @random_answers_clone.include?(input)
      
      puts"already there"
      greet
      else
      @random_answers << RandomAnswers.new(input)
    end
    binding.pry
    greet 
    print_answers
  end

  def seperator
    puts "\n\n"
    puts "(*)".colorize(:yellow) *40
    puts "\n\n"
  end
 


end

MagicEightBall.new