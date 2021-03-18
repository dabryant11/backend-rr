class CreateSenates < ActiveRecord::Migration[6.1]
  def change
    create_table :senates do |t|
      t.integer :user_id
      t.integer :senate_committee_id
      t.string :name
      t.string :district
      t.string :hometown
      t.string :committees
      t.string :party
      t.string :year_elected
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
