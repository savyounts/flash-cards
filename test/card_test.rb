require './test/test_helper'

class CardTest < Minitest::Test

  def setup
     @card = Card.new("This is a question", "This is an answer")
  end

  def test_card_knows_answer
    assert_equal "This is an answer", @card.answer
  end

  def test_card_knows_question
    assert_equal "This is a question", @card.question
  end
end
