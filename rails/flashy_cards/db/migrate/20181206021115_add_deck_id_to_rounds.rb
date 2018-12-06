class AddDeckIdToRounds < ActiveRecord::Migration[5.2]
  def change
    add_column :rounds, :deck_id, :integer
  end
end
