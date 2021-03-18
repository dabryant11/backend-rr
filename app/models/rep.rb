class Rep < ApplicationRecord
    belongs_to :user
    belongs_to :rep_campaign_finances
    belongs_to :rep_committees
    has_many :user_reps
    has_many :rep_bills
    has_many :rep_committees, through: :rep_bills
    has_many :users, through: :user_reps
end
