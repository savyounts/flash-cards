class Round
  attr_reader :deck, :guesses
  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    var = self.guesses.count
    self.deck.cards[var]
  end

  def record_guess(guess)
    new_guess = Guess.new(guess, self.current_card)
    @guesses << new_guess
  end

  def number_correct
    correct_counter = 0
    @guesses.each do |guess|
      correct_counter += 1 if guess.correct?
    end
    return correct_counter
  end

  def percent_correct
    (self.number_correct.to_f / @guesses.count) * 100
  end
end
