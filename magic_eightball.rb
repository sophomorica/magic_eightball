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
      RandomAnswers.new("stick to the rivers and lakes you're used to"),
      RandomAnswers.new("Outlook is Sunny"),
      RandomAnswers.new("Like Walking on Sunshine, don't it feel good"),
      RandomAnswers.new("Your mom goes to college"),
      RandomAnswers.new("I say 'Weird' you say 'question'!"),
      RandomAnswers.new("As long as you don't tell anyone"),
      RandomAnswers.new("Don't go chasin' waterfalls"),
      ]
     @random_answers_clone = @random_answers.map do |x| x.ans  end
    greet
  end

  def greet
    print `clear`
    seperator
    puts "                       Ask me anything and I will tell you something else \n                               just don't type 'menu' by itself".colorize(:blue)
    seperator
    input = gets.strip.downcase
    print `clear`
    # sleep 1
    seperator
  
    case 
      when input.upcase == "EXIT" 
        exit
      when input.upcase == "QUIT" 
        exit
      when input == "add_answers"
        add_answers
      when input == "print_answers"
        print_answers
      when input == "reset_answers"
        reset_answers
      when input.upcase == "MENU"
        menu
      else
        answers
    end
  end
  # def magic_answer
    
    
  # end
  def answers 
    puts "                                            #{@random_answers.sample.ans.colorize(:blue)}"
      seperator
      sleep 3
      greet
      
  end
  def print_answers
    print `clear`
    seperator
    puts "All of my knowledge on one page:".upcase.colorize(:blue)
    @random_answers.each do |x|
      puts x.ans.colorize(:green)
      end
      sleep 3
      seperator
      greet 
      
  end
  

  def add_answers
    print `clear`
    # sleep 1
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

    greet 
    

  end
  def reset_answers
    @random_answers = @random_answers_clone.map do |x| 
      RandomAnswers.new(x)
    end
   
    print `clear`
    seperator
    puts "\n\nI forgot your answers and only remember mine\n\n".colorize(:blue)
    seperator
    sleep 2
    print`clear`
    sleep 1
    menu
  end

  def menu
    seperator
    puts "           now you have all power!!!!!!!".upcase.colorize(:green)
    sleep 2
    print `clear`
    puts "1) Ask eight-ball a question"
    puts "2) Add your own answers"
    puts "3) View all possible answers"
    puts "4) Reset the Answers"
    puts "5) Exit"
    input = gets.to_i
    case input 
    when 1
      greet
      
    when 2
      add_answers
    when 3
      print_answers
    when 4
      reset_answers
    when 5
      exit
    else
      seperator
      puts "Pick a valid option".upcase.colorize(:blue)
      seperator
      menu
    end
  end
  def seperator
    puts "\n\n"
    puts "(*)".colorize(:yellow) *40
    puts "\n\n"
  end
 


end

MagicEightBall.new