class ChangeCollege < ActiveRecord::Migration[5.2]
  def change
    add_column :colleges, :men, :boolean
    rename_column :colleges, :mens_num, :players_num
    remove_column :colleges, :womens_num, :integer
  end
end
