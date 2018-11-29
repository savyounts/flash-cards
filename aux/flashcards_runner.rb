require '../lib/card'
require '../lib/guess'
require '../lib/deck'
require '../lib/round'
require '../lib/card_generator'

puts "Welcome to our flash card program."
puts "If you need a hint, type hint. Type exit to exit."
puts "What name of the .txt file will you be using? (Do not include the .txt)"
filename = gets.strip
while !File.exists?(filename + ".txt")
  abort("You aint got no files?") if filename == "exit"
  filename == "hint" ? (puts "You can't ask for a hint yet. Try a filename.") : (puts "That was not a valid file name. Try again.") 
  filename = gets.strip
  break if File.exists?(filename + ".txt")
end

generator = CardGenerator.new(filename)
generator.generate_cards
deck = Deck.new(generator.cards)
round = Round.new(deck)
round.start
