class CreateSenateCampaignFinances < ActiveRecord::Migration[6.1]
  def change
    create_table :senate_campaign_finances do |t|
      t.string :contributor
      t.integer :amount
      t.string :affiliation

      t.timestamps
    end
  end
end
