class CreateStateAgencies < ActiveRecord::Migration[6.1]
  def change
    create_table :state_agencies do |t|
      t.string :name
      t.string :website
      t.string :director
      t.string :image

      t.timestamps
    end
  end
end
