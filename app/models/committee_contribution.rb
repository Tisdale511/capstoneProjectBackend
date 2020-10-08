class CommitteeContribution < ApplicationRecord
    belongs_to :candidate_info
    belongs_to :pac_info
end
