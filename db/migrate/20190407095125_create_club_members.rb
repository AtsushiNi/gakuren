class CreateClubMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :club_members do |t|
      t.references :college
      t.string :name
      t.integer :addmission_year

      t.timestamps
    end
  end
end
