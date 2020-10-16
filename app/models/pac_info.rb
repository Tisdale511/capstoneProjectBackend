class PacInfo < ApplicationRecord
    has_many :committee_contributions
    has_many :candidate_infos, through: committee_contributions

    def parsed_pac_info
        parsed_pac_info = PacInfo.select(:id, :committee_id, :committee_name, :committee_type).where(committee_type: ["Q", "N"])
        render json: parsed_pac_info
    end
end
