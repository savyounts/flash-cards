class Card
  attr_accessor :question, :answer, :hint

  def initialize(question, answer, hint)
    @question = question
    @answer = answer
    @hint = hint
  end
end
