class AddColumnInitialsToCollege < ActiveRecord::Migration[5.2]
  def change
    add_column :colleges, :initials, :string
  end
end
