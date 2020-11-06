class Api::V1::UsersController < ApplicationController
  
    # def index
    #     users = User.all
    #     render json: users
    # end

    # def show
    #     user = User.find(params[:id])
    #     render json: user
    # end
    skip_before_action :authorize_action, only: [ :create ]

    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user, status: 200
        else
            render json: { errors: "Username Already Taken" }, status: 400
        end
    end

    def index
        render json: {tracked: self.request_user.candidate_infos}
    end

    private

    def signed_up
        render json: {}
    end

    def user_params
        params.permit(:username, :password)
    end



    # def create
    #     user = User.create(username: params[:user][:username], password: params[:user][:password])
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

    # private

    # def params_id
    #     @user = User.find(params[:id])
    # end

    # def user_params
    #     params.require(:user).permit(:username, :password)
    # end 

end
