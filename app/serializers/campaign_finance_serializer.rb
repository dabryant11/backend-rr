class CampaignFinanceSerializer < ActiveModel::Serializer
    attributes :id, :name, :district, :num_of_donors, :total_contribtuions
end