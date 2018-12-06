class CreateDecks < ActiveRecord::Migration[5.2]
  def change
    create_table :decks do |t|
      t.string :name
      t.integer :round_id

      t.timestamps
    end
  end
end
