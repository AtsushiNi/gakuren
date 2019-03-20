class AddColumnTurnToMatch < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :turn, :integer
  end
end
