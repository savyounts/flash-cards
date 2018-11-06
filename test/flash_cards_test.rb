require './test/test_helper'

class FlashCardTest < Minitest::Test
  # part of the confusion is "flash card test" doesn't tell exactly what it's testing.
  # you've got cards, decks, guesses, and rounds. Every test should fit logically
  # into one of those classes. 

  def setup
     @card = Card.new("This is a question", "This is an answer")
     @right_guess = Guess.new("This is an answer", @card)
     @wrong_guess = Guess.new("guess", @card)
     @deck = Deck.new([@card])
     @round = Round.new(@deck)
  end


  def test_card_has_a_question_and_an_answer
    skip
    # this test should live in test/card_test.rb
    assert_equal "This is a question", @card.question
    assert_equal "This is an answer", @card.answer
  end

  def test_guess_belongs_to_card
    skip
    # this test should live in guess_test.rb (i've copied it over)
    assert_equal @card, @right_guess.card
  end

  def test_correct_is_response_correct
    skip
    # this test should live in guess_test.rb (i've copied it over)
    assert @right_guess.correct?
  end

  def test_feedback_returns_correct
    skip
    # this test should live in guess_test.rb (i've copied it over)
    assert_equal @right_guess.feedback, "Correct!"
  end

  def test_feedback_returns_correct
    skip
    # this test should live in guess_test.rb (i've copied it over)
    assert_equal @wrong_guess.feedback, "Incorrect."
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
