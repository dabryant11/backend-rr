class SenateCommittee < ApplicationRecord
    has_many :senate_bills
    has_many :senates
    has_many :senates, through: :senate_bills
    has_many :senate_campaign_finances, through: :senates 
end
