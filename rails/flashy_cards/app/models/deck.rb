class Deck < ApplicationRecord
  has_many :rounds
  has_many :cards

  attr_accessor :name
end
