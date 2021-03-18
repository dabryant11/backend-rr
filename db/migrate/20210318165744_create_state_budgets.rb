class CreateStateBudgets < ActiveRecord::Migration[6.1]
  def change
    create_table :state_budgets do |t|
      t.string :year

      t.timestamps
    end
  end
end
