class Round

  attr_reader :deck, :guesses
  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    self.deck.cards[self.guesses.count]
  end

  def record_guess(guess)
    new_guess = Guess.new(guess, self.current_card)
    puts new_guess.feedback
    @guesses << new_guess
  end

  def number_correct
    counter = 0
    @guesses.each { |guess| counter += 1 if guess.correct? }
    counter
  end

  def percent_correct
    (self.number_correct.to_f / @guesses.count) * 100
  end

  def is_a_guess(response, card)
    if response == "hint"
      puts card.hint
      response1 = gets.chomp
      self.is_a_guess(response1, card)
    elsif response == "exit"
      abort("Thanks for playing! (PS. why'd you leave early bro? Can't hack it?)")
    elsif response.include?("fuck")
      abort("CONGRAULATIONS. YOU FUCKING WIN!!!")
    else
      guess = self.record_guess(response)
    end
  end

  def start
    count = self.deck.cards.count
    puts "Welcome! You\'re playing with #{count} cards."
    self.deck.cards.each_with_index do |card, index|
      puts "This is card number #{index + 1} out of #{count}." "\nQuestion: #{card.question}"
      response = gets.chomp.downcase
      self.is_a_guess(response, card)
    end
    puts "******* Game over! *******" "\nYou had #{self.number_correct} correct guesses out of #{count} for a score of #{self.percent_correct}%"
  end
end
