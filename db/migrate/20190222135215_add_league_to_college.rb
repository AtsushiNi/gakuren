class AddLeagueToCollege < ActiveRecord::Migration[5.2]
  def change
    add_column :colleges, :league, :integer
  end
end
