class RepCommittee < ApplicationRecord
    has_many :rep_bills
    has_many :reps
    has_many :reps, through: :rep_bills
    has_many :rep_campaign_finances, through: :reps 
end
