class CandidateInfo < ApplicationRecord
    has_many :committee_contributions
    has_many :tracked_politicians
    has_many :pac_infos, through: :committee_contributions 
    has_many :users, through: :tracked_politicians
end
