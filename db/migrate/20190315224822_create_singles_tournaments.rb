class CreateSinglesTournaments < ActiveRecord::Migration[5.2]
  def change
    create_table :singles_tournaments do |t|
      t.string :name
      t.integer :draw

      t.timestamps
    end
  end
end
