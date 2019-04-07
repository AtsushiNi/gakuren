class AddColumnEnrtyTermToSinglesTournament < ActiveRecord::Migration[5.2]
  def change
    add_column :singles_tournaments, :entry_start, :date
    add_column :singles_tournaments, :entry_end, :date
  end
end
