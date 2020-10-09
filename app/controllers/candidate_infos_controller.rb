class CandidateInfosController < ApplicationController

    def index
        candidate_infos = CandidateInfo.all
        render json: candidate_infos
    end

    def show
        candidate_info = CandidateInfo.find(params[:id])
        render json: candidate_info
    end

    # def create
    #     candidate_info = CandidateInfo.create(username: params[:user][:username], password: params[:user][:password])
    #     render json: user
    # end

    # def update
    #     user = User.find(params[:id])
    #     user.update(password: params[:user][:password])
    #     render json: user
    # end

    # def destroy
    #     user = User.find(params[:id])
    #     user.destroy
    # end

end
