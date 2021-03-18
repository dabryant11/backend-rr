class UserSenate < ApplicationRecord
    belongs_to :user
    belongs_to :senate
end
