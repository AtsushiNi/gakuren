class RenameCollegeCompetent < ActiveRecord::Migration[5.2]
  def change
    rename_column :colleges, :competene, :competent
  end
end
