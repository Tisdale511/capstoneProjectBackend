class UsersController < ApplicationController
  
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def create
        user = User.create(username: params[:user][:username], password: params[:user][:password])
        render json: user
    end

    def update
        user = User.find(params[:id])
        user.update(password: params[:user][:password])
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    # private

    # def params_id
    #     @user = User.find(params[:id])
    # end

    # def user_params
    #     params.require(:user).permit(:username, :password)
    # end 

end
