class CreateSinglesPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :singles_players do |t|
      t.string :name
      t.string :college
      t.integer :number
      t.references :singles_tournament

      t.timestamps
    end
  end
end
