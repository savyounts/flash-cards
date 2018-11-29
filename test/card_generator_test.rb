require_relative 'test_helper'

class CardGeneratorTest < Minitest::Test

  def setup
    @cg = CardGenerator.new('cards.txt')
  end

  def test_card_generator_initializes
     assert_instance_of CardGenerator, @cg
  end

  def test_generate_cards
    @cg.generate_cards
    assert @cg.cards.size > 0
    assert_instance_of Card, @cg.cards.first
  end
end
