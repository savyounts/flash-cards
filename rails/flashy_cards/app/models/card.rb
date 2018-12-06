class Card < ApplicationRecord
  belongs_to :deck
  has_many :guesses

  attr_accessor :question, :hint, :answer
end
