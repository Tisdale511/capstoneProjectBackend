class Api::V1::CommitteeContributionsController < ApplicationController

    def index
        # committee_contributions = CommitteeContribution.all
        committee_contributions = CommitteeContribution.select(:id, :candidate_id, :transaction_amount, :committee_id).where(entity_type: "PAC")
        render json: committee_contributions
    end

    def show
        committee_contribution = CommitteeContribution.find(params[:id])
        render json: committee_contribution
    end

end
