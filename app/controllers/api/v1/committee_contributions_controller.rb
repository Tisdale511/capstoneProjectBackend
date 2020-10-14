class Api::V1::CommitteeContributionsController < ApplicationController

    def index
        committee_contributions = CommitteeContribution.all
        render json: committee_contribution
    end

    def parsed_contribution_info
        committee_contributions = CommitteeContribution.select(:id, :candidate_id, :transaction_amount, :committee_id).where(entity_type: "PAC")
        render json: parsed_contribution_info
    end

    def show
        committee_contribution = CommitteeContribution.find(params[:id])
        render json: committee_contribution
    end

end
