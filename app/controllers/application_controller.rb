class ApplicationController < ActionController::API
    before_action :authorize_action
    # private

    def token
      request.headers['Authorization']
    end

    def decoded_token
      begin
        JWT.decode(self.token, ENV['SECRET'], true, { alg: ENV['ALG'] })
      rescue JWT::DecodeError
        [ { error: 'invalid token' } ]
      end
    end

    def token_user_id
      self.decoded_token.first['user_id']
    end

    def request_user
      return false if !self.token_user_id
      @user ||= User.find(self.token_user_id)
    end

    def request_authorized?
      !!self.request_user
    end
    
    def authorize_action
      if !self.request_authorized?
        render json: { error: "Request not authorized." }, status: 401
      end
    end
end
