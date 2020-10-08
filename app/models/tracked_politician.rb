class TrackedPolitician < ApplicationRecord
    belongs_to :user
    belongs_to :candidate_info
end
