class RandomAnswers 
  attr_accessor :answer :num
  def initialize(answer, num)
    @answer = answer
    @num = num

  end
end 





class MagicEightBall



  attr_accessor 
  def initialize

    @random_answers = [
      RandomAnswers.new("Ask again", 1)
      RandomAnswers.new("Pure folly", 2)
      RandomAnswers.new("Perhaps in time", 3)
      RandomAnswers.new("Let me check back on that", 4)
      RandomAnswers.new("People do", 5)
      RandomAnswers.new("This is your lucky day", 6)
      RandomAnswers.new("Eat Chicken instead", 7)
      RandomAnswers.new("Outlook is Sunny", 8)
      RandomAnswers.new("Like Walking on Sunshine, don't it feel good", 9)
      RandomAnswers.new("Your mom goes to college", 10)

    ]
    greet
    magic_answer
  end


end