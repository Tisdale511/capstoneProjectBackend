class CandidateInfo < ApplicationRecord
    has_many :committee_contributions
    has_many :tracked_politicians
    has_many :pac_infos, through: :committee_contributions 
    has_many :users, through: :tracked_politicians

    def self.parsed_candidate_info
        all.select(:id, :candidate_name, :candidate_id, :candidate_office_state, :candidate_office_district, :candidate_party_affiliation, :candidate_office, :candidate_incumbent_challenger_open_seat)
    end

    def self.candidate_search_district_number_and_state(state, district_number)
        select(:id, :candidate_name, :candidate_id, :candidate_office_state, :candidate_office_district, :candidate_party_affiliation, :candidate_office, :candidate_incumbent_challenger_open_seat).where(candidate_office_state: state, candidate_office_district: district_number)
        render json: candidate_search_district_number_and_state
    end
end
