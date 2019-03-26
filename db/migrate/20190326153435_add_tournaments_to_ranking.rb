class AddTournamentsToRanking < ActiveRecord::Migration[5.2]
  def change
    add_column :rankings, :tournaments, :string
  end
end
