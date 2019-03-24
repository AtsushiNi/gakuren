class AddStarttimeFinishtimeToMatch < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :start_time, :time
    add_column :matches, :finish_time, :time
  end
end
