class RenameColumnOfCollege < ActiveRecord::Migration[5.2]
  def change
    rename_column :colleges, :initials, :initial_name
  end
end
