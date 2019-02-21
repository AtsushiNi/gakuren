class AddColumnMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :addmission_year, :integer
    add_column :members, :college, :string
    add_column :members, :post, :string
  end
end
