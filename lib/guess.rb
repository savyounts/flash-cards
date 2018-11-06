class Guess
  attr_reader :response, :card
  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    self.response == self.card.answer
  end

  def feedback
    self.response == self.card.answer ? "Correct!" : "Incorrect."
  end
end
