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

    def auto_login
        token = params[:token]
        if !token
            render json: {error: "Not logged in." }, status: 401
        end
        
        @user = User.find(token_user_id)

        if !@user
            render json: {error: 'User not found. Please login or sign up'}, status: 401
        end

        if @user
            render json: {success: "Login successful"}, status: 200
        end        
    end
    
    def issue_token(user)
        JWT.encode({ user_id: user.id }, ENV['SECRET'], ENV['ALG'])
    end
    private
    
    def user_params
        params.permit(:username, :password, :token)
    end
end
