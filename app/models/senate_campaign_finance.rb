class SenateCampaignFinance < ApplicationRecord
    has_many :senates
    has_many :senate_committees, through: :senates
    has_many :users, through: :senates
end
