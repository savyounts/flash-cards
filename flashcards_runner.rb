require_relative './lib/card'
require_relative './lib/deck'
require_relative './lib/round'
require_relative './lib/guess'


card1 = Card.new('If I climb an 8c route what would that be in Yosemite decimal?', '5.14b')
card2 = Card.new('True or False: Margo Hayes has climbed multiple 5.15s', 'True')
card3 = Card.new('In what country is the hardest sport climb in the world?', 'Norway')
card4 = Card.new('What\'s the capital of Norway?', 'Oslo')
card5 = Card.new('What was the nickname of German flying ace Manfred von Richthofen?', 'The Red Baron')


deck = Deck.new([card1, card2, card3, card4, card5])

round = Round.new(deck)
#
# def start
#   puts "Welcome! You\'re playing with #{deck.count} cards."
# end

round.start
