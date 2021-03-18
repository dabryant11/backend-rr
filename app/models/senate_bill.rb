class SenateBill < ApplicationRecord
    belongs_to :rep
    belongs_to :rep_committee
end
