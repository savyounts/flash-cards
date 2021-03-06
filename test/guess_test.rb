require_relative 'test_helper'

class GuessTest < Minitest::Test

  def setup
     @card = Card.new("What is the qestion?", "This is the answer")
     @right_guess = Guess.new("This is the answer", @card)
     @wrong_guess = Guess.new("This is the wrong answer", @card)
  end

  def test_guess_belongs_to_card
    assert_equal @card, @right_guess.card
  end

  def test_correct_is_response_correct
    assert @right_guess.correct?
  end

  def test_feedback_returns_correct
    assert_equal @right_guess.feedback, "Correct!"
  end

  def test_feedback_returns_incorrect
    assert_equal @wrong_guess.feedback, "Incorrect."
  end
end
