class ChangeColumnScoreInMatch < ActiveRecord::Migration[5.2]
  def change
    remove_column :matches, :score, :integer
    add_column :matches, :score, :string
  end
end
