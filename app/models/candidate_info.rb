class CandidateInfo < ApplicationRecord
    has_many :committee_contributions
    has_many :tracked_politicians
    has_many :pac_infos, through: :committee_contributions 
    has_many :users, through: :tracked_politicians

    def parsed_candidate_info
        self.all.select(:id, :candidate_name, :candidate_id, :candidate_office_state, :candidate_office_district, :candidate_party_affiliation, :candidate_office, :candidate_incumbent_challenger_open_seat)
    end
end
