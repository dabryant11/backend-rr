class CreateUserSenates < ActiveRecord::Migration[6.1]
  def change
    create_table :user_senates do |t|
      t.integer :user_id
      t.integer :senate_id

      t.timestamps
    end
  end
end
