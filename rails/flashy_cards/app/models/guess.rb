class Guess < ApplicationRecord
  belongs_to :round
  belongs_to :card

  attr_accessor :response

  def correct?
    self.response.downcase == self.card.answer.downcase
  end

  def feedback
    self.correct? ? "Correct!" : "Incorrect."
  end
end
