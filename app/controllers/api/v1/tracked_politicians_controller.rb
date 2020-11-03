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
        current = self.request_user
        if current
            TrackedPolitician.create(candidate_info_id: params[:id], user_id: current.id)
            render json: { tracked: current.candidate_infos }, status: 200
        else
            render json: { errors: 'Something Happened' }, status: 404
        end
    end

    def destroy
        current = self.request_user
        if current
            TrackedPolitician.where(user: current, candidate_info_id: params[:id]).destroy_all
            render json: { tracked: current.candidate_infos }, status: 200
        else
            render json: { errors: 'Something Happened' }, status: 404
        end
    end
end
