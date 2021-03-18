class RepCampaignFinance < ApplicationRecord
    has_many :reps
    has_many :rep_committees, through: :reps
    has_many :users, through: :reps
end
