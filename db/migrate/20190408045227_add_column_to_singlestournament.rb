class AddColumnToSinglestournament < ActiveRecord::Migration[5.2]
  def change
    add_column :singles_tournaments, :seed_players, :text
  end
end
