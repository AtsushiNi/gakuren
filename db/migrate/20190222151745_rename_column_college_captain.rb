class RenameColumnCollegeCaptain < ActiveRecord::Migration[5.2]
  def change
    rename_column :colleges, :captaion, :captain
  end
end
