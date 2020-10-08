class User < ApplicationRecord
    has_many :tracked_politicians
    has_many :candidate_infos, through: :tracked_politicians
end
