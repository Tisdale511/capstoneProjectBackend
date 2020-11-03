class User < ApplicationRecord
    has_many :tracked_politicians
    has_many :candidate_infos, through: :tracked_politicians
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    validates :password, presence: true
    
end
