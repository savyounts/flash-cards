class CardGenerator
  attr_reader :filename, :cards

  def initialize(filename)
    @filename = File.open(filename + ".txt", 'r')
    @cards = []
  end

  def generate_cards
    self.filename.each do |line|
      array = line.split(',')
      card = Card.new(array[0], array[1], array[2].chomp)
      @cards << card
    end
  end
end
