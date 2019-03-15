class AddContentToCollege < ActiveRecord::Migration[5.2]
  def change
    add_column :colleges, :mens_num, :integer
    add_column :colleges, :womens_num, :integer
    add_column :colleges, :captaion, :string
    add_column :colleges, :competene, :string
    add_column :colleges, :prefecture, :string
  end
end
