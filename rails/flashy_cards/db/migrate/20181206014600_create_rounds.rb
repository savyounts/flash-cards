class CreateRounds < ActiveRecord::Migration[5.2]
  def change
    create_table :rounds do |t|
      t.integer :score, :default => 0

      t.timestamps
    end
  end
end
