class Api::V1::TrackedPoliticiansController < ApplicationController
    
    def index
        tracked_politicians = User.all
        render json: tracked_politicians
    end

    def show
        tracked_politician = TrackedPolitician.find(params[:id])
        render json: tracked_politician
    end

    def create
        tracked_politician = TrackedPoliticians.create(user_id: params[:tracked_politician][:user_id], candidate_info_id: params[:tracked_politician][:candidate_info_id])
        render json: tracked_politician
    end

end
