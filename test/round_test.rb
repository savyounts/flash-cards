require_relative 'test_helper'

class RoundTest < Minitest::Test

  def setup
     @card = Card.new("What is the question?", "This is the answer")
     @right_guess = Guess.new("This is the answer", @card)
     @wrong_guess = Guess.new("This is the wrong answer", @card)
     @deck = Deck.new([@card])
     @round = Round.new(@deck)
  end

  def test_deck_has_cards
    assert_equal @deck.cards, [@card]
  end

  def test_round_has_deck
    assert_equal @round.deck, @deck
  end

  def test_current_card_equals_number_of_guesses
    card1 = Card.new("1", "2")
    card2 = Card.new("3", "4")
    card3 = Card.new("5", "6")
    deck = Deck.new([card1, card2, card3])
    round = Round.new(deck)
    assert_equal round.current_card, card1
  end

  def test_record_guess_changes_card
    card1 = Card.new("1", "2")
    card2 = Card.new("3", "4")
    card3 = Card.new("5", "6")
    deck = Deck.new([card1, card2, card3])
    round = Round.new(deck)
    round.record_guess("this")
    assert_equal round.current_card, card2
  end

   def test_number_correct
     @round.guesses << @right_guess
     assert_equal @round.number_correct, 1
   end

   def test_percent_correct
     @round.guesses << @right_guess
     @round.guesses << @wrong_guess
     assert_equal @round.percent_correct, 50
   end

end
