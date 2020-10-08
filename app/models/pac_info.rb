class PacInfo < ApplicationRecord
    has_many :committee_contributions
    has_many :candidate_infos, through: committee_contributions
end
