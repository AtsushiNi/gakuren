class AddColumnNameToRoot < ActiveRecord::Migration[5.2]
  def change
    add_column :roots, :name, :string
  end
end
