class AddColumnReadyToMatch < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :ready, :boolean
  end
end
