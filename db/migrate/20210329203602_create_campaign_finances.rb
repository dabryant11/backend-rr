class CreateCampaignFinances < ActiveRecord::Migration[6.1]
  def change
    create_table :campaign_finances do |t|

      t.string :name
      t.string :district
      t.string :num_of_donors
      t.string :total_contribtuions

      t.timestamps
    end
  end
end
