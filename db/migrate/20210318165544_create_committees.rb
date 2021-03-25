class CreateCommittees < ActiveRecord::Migration[6.1]
  def change
    create_table :committees do |t|
      t.string :name
      t.string :chair
      t.string :vice_chair
      t.string :ranking_member
      t.string :members
      t.string :chamber

      t.timestamps
    end
  end
end
