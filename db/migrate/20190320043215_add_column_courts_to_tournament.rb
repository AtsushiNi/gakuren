class AddColumnCourtsToTournament < ActiveRecord::Migration[5.2]
  def change
    add_column :singles_tournaments, :courts, :string
  end
end
