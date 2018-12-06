class RemoveRoundIdFromDecks < ActiveRecord::Migration[5.2]
  def change
    remove_column :decks, :round_id
  end
end
