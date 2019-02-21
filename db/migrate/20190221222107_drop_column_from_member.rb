class DropColumnFromMember < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :grade, :integer
  end
end
