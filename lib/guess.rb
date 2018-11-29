class Guess

  attr_reader :response, :card
  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    self.response.downcase == self.card.answer.downcase
  end

  def feedback
    self.correct? ? "Correct!" : "Incorrect."
  end
end
