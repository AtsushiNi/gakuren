class AddVisibleToNews < ActiveRecord::Migration[5.2]
  def change
    add_column :news, :visible, :boolean
  end
end
