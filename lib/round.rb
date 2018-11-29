require 'pry'
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
    puts new_guess.feedback
    @guesses << new_guess
  end

  def number_correct
    counter = 0
    @guesses.each do |guess|
      counter += 1 if guess.correct?
    end
    counter
  end

  def percent_correct
    (self.number_correct.to_f / @guesses.count) * 100
  end

  def start
    count = self.deck.cards.count
   puts "Welcome! You\'re playing with #{count} cards."
   self.deck.cards.each_with_index do |card, index|
     puts "This is card number #{index + 1} out of #{count}."
     puts "Question: #{card.question}"
     guess = self.record_guess(gets.chomp)
   end
   puts "******* Game over! *******"
   puts "You had #{self.number_correct} correct guesses out of #{count} for a score of #{self.percent_correct}%"
  end



end
