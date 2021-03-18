class CreateMinorityBusinesses < ActiveRecord::Migration[6.1]
  def change
    create_table :minority_businesses do |t|
      t.string :name
      t.string :address
      t.integer :rating
      t.string :image
      t.string :hours
      t.string :website
      t.string :twitter
      t.string :ig
      t.string :facebook

      t.timestamps
    end
  end
end
