class CreateSenateCommittees < ActiveRecord::Migration[6.1]
  def change
    create_table :senate_committees do |t|
      t.string :name
      t.string :chair
      t.string :vice_chair
      t.string :ranking_member
      t.string :members

      t.timestamps
    end
  end
end
