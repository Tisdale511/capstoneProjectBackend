class Api::V1::PacInfosController < ApplicationController
    def index
        pac_infos = PacInfo.all
        render json: pac_infos
    end

    def show
        pac_info = PacInfo.find(params[:id])
        render json: pac_info
    end
end
