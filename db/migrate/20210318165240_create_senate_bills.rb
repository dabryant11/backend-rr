class CreateSenateBills < ActiveRecord::Migration[6.1]
  def change
    create_table :senate_bills do |t|
      t.integer :senate_id
      t.integer :senate_committee_id
      t.string :sponsor
      t.string :co_sponsor
      t.string :votes
      t.string :bill_number
      t.string :committee
      t.string :subject

      t.timestamps
    end
  end
end
