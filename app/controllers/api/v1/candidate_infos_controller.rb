class Api::V1::CandidateInfosController < ApplicationController

    def index
        candidate_infos = CandidateInfo.all
        render json: candidate_infos
    end
    
    def candidate_search_district_number_and_state 
        candidate_search_district_number_and_state = CandidateInfo.candidate_search_district_number_and_state(params[:state], params[:district])
        render json: candidate_search_district_number_and_state
    end

    def top_10_contributors
        top_10_contributors = CandidateInfo.top_10_contributors(params[:candidate_id])
        render json: top_10_contributors
    end
    
    # def incumbent_house_candidate_info = CandidateInfo.select(:id, :candidate_name, :candidate_id, :candidate_office_state, :candidate_office_district, :candidate_party_affiliation, ).where(candidate_office: "H", candidate_incumbent_challenger_open_seat: "I" )
    #     render :json => incumbent_house_candidate_info
    # end

    # def challenger_senator_candidate_info = CandidateInfo.select(:id, :candidate_name, :candidate_id, :candidate_office_state, :candidate_office_district, :candidate_party_affiliation, ).where(:candidate_office: "S", candidate_incumbent_challenger_open_seat: "C" )
    #     render :json => challenger_senator_candidate_info
    # end

    # def challenger_house_candidate_info = CandidateInfo.select(:id, :candidate_name, :candidate_id, :candidate_office_state, :candidate_office_district, :candidate_party_affiliation, ).where(:candidate_office: "H", candidate_incumbent_challenger_open_seat: "C" )
    #     render :json => challenger_house_candidate_info
    # end

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
