class User < ApplicationRecord
    has_many :user_reps
    has_many :reps
    has_many :user_senates
    has_many :senates
    has_many :reps, through: :user_reps
    has_many :senates, through: :user_senates
    has_many :senate_committees, through: :senates
    has_many :rep_committees, through: :reps
    has_many :rep_campaign_finances, through: :reps
    has_many :senate_campaign_finances, through: :senates
end
