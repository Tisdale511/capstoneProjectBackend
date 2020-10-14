class TokenController < ApplicationController
    skip_before_action :authorize_action
    
    def create
        @user = User.find_by(username: params[:username])
        render json: { error: "No User found with that username." }, status: 404 if !@user
        if !@user.authenticate(params[:password])
        render json: { error: "Password invalid." }, status: 401
        end
        token = self.issue_token(@user)
        render json: { token: token }
    end
    
    # private
    def issue_token(user)
        JWT.encode({ user_id: user.id }, ENV['SECRET'], ENV['ALG'])
    end
    
    # def user_params
    #     params.permit(:username, :password)
    # end
end
