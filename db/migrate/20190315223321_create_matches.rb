class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|

      t.references :singles_tournament
      t.integer :young, array: true
      t.integer :old, array: true
      t.integer :winner_num
      t.integer :score, array: true
      t.integer :parent_id
      t.timestamps
    end
  end
end
