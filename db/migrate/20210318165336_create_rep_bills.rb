class CreateRepBills < ActiveRecord::Migration[6.1]
  def change
    create_table :rep_bills do |t|
      t.integer :rep_id
      t.integer :rep_committee_id
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
