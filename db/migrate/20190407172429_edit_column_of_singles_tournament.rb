class EditColumnOfSinglesTournament < ActiveRecord::Migration[5.2]
  def change
    remove_column :singles_tournaments, :entry_start, :date
    remove_column :singles_tournaments, :entry_end, :date
    add_column :singles_tournaments, :entry_start, :datetime
    add_column :singles_tournaments, :entry_end, :datetime
  end
end
