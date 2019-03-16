class AddColumnRoundToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :round, :integer
  end
end
