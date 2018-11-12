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
    # this could call the #correct? method, and then have the ternery, like:
    # correct? ? "Correct!" : "Incorrect."
    # self.response == self.card.answer ? "Correct!" : "Incorrect."
    # or:
    return "Correct!" if correct?
    "Incorrect."
  end



end
