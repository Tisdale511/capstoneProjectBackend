class CommitteeContribution < ApplicationRecord
    belongs_to :candidate_info
    belongs_to :pac_info

    def self.parsed_contribution_info
        select(:id, :candidate_id, :transaction_amount, :committee_id, :entity_type)
        render json: parsed_contribution_info
    end


    # Nancy Pelosi candidate_id: "H8CA05035"
    # NANCY PELOSI FOR CONGRESS committee_id: "C00003251"
    # "H8CA05035", "C00003251"
    # if candidate ID is called, loop to find each committee_id and transaction_amount, conver to integer
    # gather all committee_id that donated to candidate and
    # loop throug hall committees to create arrawy of hashes {committee_id: transaction_total}

    # transaction_amount = {transaction_amount: transaction_amount}
    # committee_id = {committee_id: committee_id}
    # transaction_sum = 0
    # committee_contributions = {}
    # contributions.each do |contribution|
    #     if !committee_contributions.key?(committee_id)
    #         committee_contributions[committee_id: transaction_sum = transaction_amount.to_i]
    #     else
    #         committee_contributions[committee_id: transaction_sum + transaction_amount.to_i]
    #     end
    # end



    def self.find_all_committees_to_candidate(candidate_id)
        all_contribution_hashes = self.where(candidate_id: candidate_id)
        all_committee_ids = []
        all_contribution_hashes.each do |contribution|
            all_committee_ids << contribution.committee_id
        end
        all_committee_ids.uniq
    end

    def self.create_array_of_hashes(candidate_id)
        # run find all committes to candidate, use array of committee_ids
        # iterate over aforementioned array, for each id, create new hash
        # set key to current ele to candidate_id, then run totals method and assign to value of hash
        # push each hash into the array, return the array of hashes
        committee_ids = find_all_committees_to_candidate(candidate_id).
        # transaction_totals = committee_contribution_totals(candidate_id, committee_id)
        transaction_array = [];
        committee_ids.map do |committee_id|
            transaction_array << {committee_id => committee_contribution_totals(candidate_id, committee_id)}
        end
        return transaction_array.uniq
    end

    def self.committee_contribution_totals(candidate_id, committee_id)
        committee_contributions = all_contributions_to_candidate(candidate_id, committee_id)
        transaction_sum = 0
        committee_contributions.map do |contribution|
           transaction_sum += contribution.transaction_amount
        end
        return transaction_sum
    end

    def self.all_contributions_to_candidate(candidate_id, committee_id)
        where(candidate_id: candidate_id, committee_id: committee_id)
    end

end
