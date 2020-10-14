class Api::V1::PacInfosController < ApplicationController
    def index
        pac_infos = PacInfo.all
        render json: pac_infos
    end

    def parsed_pac_info
        parsed_pac_info = PacInfo.select(:id, :committee_id, :committee_name, :committee_type).where(committee_type: ["Q", "N"])
        render json: parsed_pac_info
    end

    def show
        pac_info = PacInfo.find(params[:id])
        render json: pac_info
    end
end
