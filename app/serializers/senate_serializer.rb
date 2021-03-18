class SenateSerializer < ActiveModel::Serializer
    attributes :user_id, :senate_committee_id, :name, :district, :hometown, :committees, :party, :year_elected, :phone_number, :email

    belongs_to :user
    belongs_to :senate_campaign_finances
    belongs_to :senate_committees
    has_many :user_senates
    has_many :senate_bills
    has_many :senate_committees, through: :senate_bills
    has_many :users, through: :user_senates
end