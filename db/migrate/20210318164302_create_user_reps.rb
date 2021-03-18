class CreateUserReps < ActiveRecord::Migration[6.1]
  def change
    create_table :user_reps do |t|
      t.integer :user_id
      t.integer :rep_id

      t.timestamps
    end
  end
end
