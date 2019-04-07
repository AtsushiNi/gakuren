class AddColumnEntryListToTournament < ActiveRecord::Migration[5.2]
  def change
    add_column :singles_tournaments, :entry_list, :text
  end
end
