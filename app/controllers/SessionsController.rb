class SessionsController < ApplicationController
    include CurrentUserConcern

    def create
      user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
      
      if user
        session[:user_id] = user.id
        render json: {
          status: :created,
          logged_in: true,
          user: user
        }, include: :tasks
      else  
        render json: { status: 401 }
      end
    end

    def logged_in
      if @current_user
        render json: {
          logged_in: true,
          user: @current_user
        }, include: :tasks
      else
        render json: {
          logged_in: false
        }
      end
    end

    def logout
      reset_session
      render json: { status: 200, logged_out: true }
    end
end