class CandidateInfo < ApplicationRecord
    has_many :committee_contributions
    has_many :tracked_politicians
    has_many :pac_infos, through: :committee_contributions 
    has_many :users, through: :tracked_politicians

    def self.top_10_contributors(candidate_id)
        return CandidateInfo.includes(committee_contributions: [:pac_info] ).where(candidate_id: candidate_id)[0].committee_contributions.select('pac_info_id, SUM(transaction_amount) as total').group('pac_info_id').order('total DESC').limit(10).map do |transaction|
            {name: transaction.pac_info.committee_name, total: transaction.total}
        end
    end

    def self.parsed_candidate_info
        all.select(:id, :candidate_name, :candidate_id, :candidate_office_state, :candidate_office_district, :candidate_party_affiliation, :candidate_office, :candidate_incumbent_challenger_open_seat)
    end

    def self.candidate_search_district_number_and_state(state, district_number)
        select(:id, :candidate_name, :candidate_id, :candidate_office_state, :candidate_office_district, :candidate_party_affiliation, :candidate_office, :candidate_incumbent_challenger_open_seat, :has_contributors).where(candidate_office_state: state, candidate_office_district: [district_number, '00'])
    end
end
