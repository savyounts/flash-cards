require './test/test_helper'

class CardTest < Minitest::Test
  def setup
    @card = Card.new("What's the first month of the year?", "January")
  end
  
  def test_card_knows_question
    assert_equal "What's the first month of the year?", @card.question
  end
  
  def test_card_knows_answer
    assert_equal "January", @card.answer
  end
end